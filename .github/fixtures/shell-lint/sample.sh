#!/usr/bin/env bash
# Copyright 2026 hrzlgnm
# SPDX-License-Identifier: MIT-0
#
# Fixture for the shell-lint reusable workflow smoke test in ci.yml.
# Must stay clean under `shellcheck -S warning` and
# `shfmt --diff --indent 4 --case-indent --binary-next-line`.

set -euo pipefail

name="${1:-world}"
echo "Hello, $name"
