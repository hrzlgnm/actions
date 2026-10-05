#!/usr/bin/env bash
# Copyright 2026 hrzlgnm
# SPDX-License-Identifier: MIT
#
# Report whether RELEASE_VERSION needs publishing by comparing it with the
# pkgver recorded in the ~/aur checkout. An equal or higher pkgver means
# the release is already published, so signal a skip instead of failing
# and let callers stop normally. A missing PKGBUILD (new package) needs
# publishing. Only a malformed PKGBUILD fails.
#
# Env:
#   RELEASE_VERSION  release version without leading v, e.g. 1.13.0
#   GITHUB_OUTPUT    file receiving the needs_update step output when set
#                    (injected by Actions; skipped when unset for local runs)
#
# Idempotent: read-only check.

set -euo pipefail

: "${RELEASE_VERSION:?RELEASE_VERSION must be set}"

emit_needs_update() {
    if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
        echo "needs_update=$1" >>"$GITHUB_OUTPUT"
    fi
}

cd "${HOME}/aur" || exit 1
if [[ ! -f PKGBUILD ]]; then
    emit_needs_update true
    exit 0
fi
pkgver_line=$(grep -E '^pkgver=' PKGBUILD | head -n1 || true)
if [[ -z "$pkgver_line" ]]; then
    echo "Error: no literal pkgver= assignment found in PKGBUILD." >&2
    exit 1
fi
current_version="${pkgver_line#pkgver=}"
if [[ $current_version == \'*\' ]]; then
    current_version="${current_version#\'}"
    current_version="${current_version%\'}"
elif [[ $current_version == \"*\" ]]; then
    current_version="${current_version#\"}"
    current_version="${current_version%\"}"
fi
if [[ ! "$current_version" =~ ^[A-Za-z0-9._+]+$ ]]; then
    echo "Error: PKGBUILD pkgver is not a plain literal version: $pkgver_line" >&2
    exit 1
fi
if [[ "$current_version" == "$RELEASE_VERSION" ]]; then
    echo "AUR package already at version $RELEASE_VERSION, nothing to do."
    emit_needs_update false
    exit 0
fi
if [[ "$(printf '%s\n%s' "$current_version" "$RELEASE_VERSION" | sort -V | head -n1)" != "$current_version" ]]; then
    echo "AUR package ahead at version $current_version (release $RELEASE_VERSION), nothing to do."
    emit_needs_update false
    exit 0
fi
echo "New version $RELEASE_VERSION is higher than the current version $current_version, proceeding."
emit_needs_update true
