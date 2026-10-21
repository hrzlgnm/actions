#!/usr/bin/env bash
# Copyright 2026 hrzlgnm
# SPDX-License-Identifier: MIT
#
# Regression tests for setup-aur-ssh.sh host key filtering.
# Stubs ssh-keyscan with canned scans while using the real ssh-keygen,
# so fingerprint verification runs for real. Exits nonzero on failure.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SETUP_SCRIPT="$SCRIPT_DIR/setup-aur-ssh.sh"

# Real aur.archlinux.org public host keys (the pinned set in
# setup-aur-ssh.sh). Public material, safe to embed. Hash salts vary per
# scan, so assertions compare key bodies, which are stable.
PINNED_RSA="|1|F9b8VhNHmdYVGSWl+gSs/6tRI/c=|e/7mVOH2UDfmpP/dw9JviTWE7e0= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDKF9vAFWdgm9Bi8uc+tYRBmXASBb5cB5iZsB7LOWWFeBrLp3r14w0/9S2vozjgqY5sJLDPONWoTTaVTbhe3vwO8CBKZTEt1AcWxuXNlRnk9FliR1/eNB9uz/7y1R0+c1Md+P98AJJSJWKN12nqIDIhjl2S1vOUvm7FNY43fU2knIhEbHybhwWeg+0wxpKwcAd/JeL5i92Uv03MYftOToUijd1pqyVFdJvQFhqD4v3M157jxS5FTOBrccAEjT+zYmFyD8WvKUa9vUclRddNllmBJdy4NyLB8SvVZULUPrP3QOlmzemeKracTlVOUG1wsDbxknF1BwSCU7CmU6UFP90kpWIyz66bP0bl67QAvlIc52Yix7pKJPbw85+zykvnfl2mdROsaT8p8R9nwCdFsBc9IiD0NhPEHcyHRwB8fokXTajk2QnGhL+zP5KnkmXnyQYOCUYo3EKMXIlVOVbPDgRYYT/XqvBuzq5S9rrU70KoI/S5lDnFfx/+lPLdtcnnEPk="
PINNED_ECDSA="|1|yxYVXnLFklwixp6q3HJCJIC0WmE=|mIrRg6Bm4gjQKv1k08MInMfwEhM= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBLMiLrP8pVi5BFX2i3vepSUnpedeiewE5XptnUnau+ZoeUOPkpoCgZZuYfpaIQfhhJJI5qgnjJmr4hyJbe/zxow="
PINNED_ED25519="|1|HhvHaDJjqaYPn5Zokw3bYmDMGno=|T3tiDZb9E4q5XdRyuaJpsHqQEuU= ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEuBKrPzbawxA/k2g6NcyV5jmqwJ2s+zpgZGZ7tpLIcN"
# Locally generated key that no Arch publication covers.
UNKNOWN_LINE="aur.archlinux.org ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPqm4IMFNYAJTZ9rsBJ2X7pvvoA5beUaCzcX1bA1kkvp"

CLEANUP_DIRS=()
cleanup() {
    if [ "${#CLEANUP_DIRS[@]}" -gt 0 ]; then
        rm -rf "${CLEANUP_DIRS[@]}"
    fi
}
trap cleanup EXIT

fail() {
    echo "FAIL: $1" >&2
    exit 1
}

# isolate <scan-file>: fresh HOME plus an ssh-keyscan stub printing the
# canned scan. Leaves TEST_HOME exported for assertions.
isolate() {
    local scan_file="$1"
    local stub_bin
    TEST_HOME="$(mktemp -d)"
    CLEANUP_DIRS+=("$TEST_HOME")
    stub_bin="$(mktemp -d)"
    CLEANUP_DIRS+=("$stub_bin")
    printf '#!/bin/sh\ncat "%s"\n' "$scan_file" >"$stub_bin/ssh-keyscan"
    chmod +x "$stub_bin/ssh-keyscan"
    export HOME="$TEST_HOME"
    export AUR_DEPLOY_KEY="dummy-test-key"
    export PATH="$stub_bin:/usr/bin:/bin"
}

test_mixed_scan_saves_only_pinned() {
    local scan
    scan="$(mktemp)"
    CLEANUP_DIRS+=("$scan")
    {
        echo "# aur.archlinux.org:22 SSH-2.0-OpenSSH_10.6"
        echo "$PINNED_RSA"
        echo "$PINNED_ECDSA"
        echo "$PINNED_ED25519"
        echo "$UNKNOWN_LINE"
    } >"$scan"
    isolate "$scan"
    local output status
    set +e
    output="$(bash "$SETUP_SCRIPT" 2>&1)"
    status=$?
    set -e
    [ "$status" -eq 0 ] || fail "mixed scan exited $status: $output"
    local known_hosts="$TEST_HOME/.ssh/known_hosts"
    [ "$(wc -l <"$known_hosts")" -eq 3 ] || fail "expected 3 known_hosts lines, got $(wc -l <"$known_hosts")"
    local line body
    for line in "$PINNED_RSA" "$PINNED_ECDSA" "$PINNED_ED25519"; do
        body="${line##* }"
        grep -qF "$body" "$known_hosts" || fail "pinned key missing from known_hosts"
    done
    body="${UNKNOWN_LINE##* }"
    grep -qF "$body" "$known_hosts" && fail "unpinned key recorded in known_hosts"
    echo "$output" | grep -q "ignoring" || fail "expected ignoring warning for unpinned key"
    grep -q "UpdateHostKeys no" "$TEST_HOME/.ssh/config" || fail "ssh config lacks UpdateHostKeys no"
    echo "PASS: mixed scan saves only pinned keys"
}

test_unknown_only_scan_fails_untouched() {
    local scan
    scan="$(mktemp)"
    CLEANUP_DIRS+=("$scan")
    echo "$UNKNOWN_LINE" >"$scan"
    isolate "$scan"
    local known_hosts="$TEST_HOME/.ssh/known_hosts"
    mkdir -p "$TEST_HOME/.ssh"
    echo "github.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAXsentinel" >"$known_hosts"
    cp "$known_hosts" "$known_hosts.before"
    CLEANUP_DIRS+=("$known_hosts.before")
    local output status
    set +e
    output="$(bash "$SETUP_SCRIPT" 2>&1)"
    status=$?
    set -e
    [ "$status" -ne 0 ] || fail "unknown-only scan unexpectedly succeeded"
    cmp -s "$known_hosts" "$known_hosts.before" || fail "known_hosts changed on failure"
    echo "$output" | grep -q "no verifiable host keys" || fail "expected no-verifiable-keys error"
    echo "PASS: unknown-only scan fails without touching known_hosts"
}

test_mixed_scan_saves_only_pinned
test_unknown_only_scan_fails_untouched
echo "All setup-aur-ssh tests passed"
