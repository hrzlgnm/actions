#!/usr/bin/env bash
# Copyright 2026 hrzlgnm
# SPDX-License-Identifier: MIT
#
# Fail unless all blocking release preconditions hold for TAG_NAME:
#   1. No draft release exists in REPOSITORY (never clobber drafts).
#   2. No release exists yet for TAG_NAME.
#   3. The semver predecessor of TAG_NAME has a published (non-draft)
#      release, so a skipped version cannot leave a silent gap in the
#      release history. The first version tag is exempt.
#
# Workflow-command annotations keep failures visible in the GitHub UI:
# error lines are emitted as ::error:: annotations on stdout, informational
# lines stay plain text.
#
# Env:
#   TAG_NAME    tag being released (e.g. v1.2.3)
#   REPOSITORY  owner/repo to query (e.g. hrzlgnm/zux)
#   GH_TOKEN    token for gh API calls
#
# Requires: gh CLI and a checkout with full history (fetch-depth: 0)
# for tag enumeration.

set -euo pipefail

tag_name="${TAG_NAME:?TAG_NAME must be set}"
repository="${REPOSITORY:?REPOSITORY must be set}"

# 1. Never clobber an existing draft release.
drafts=$(gh api "repos/${repository}/releases?per_page=100" --paginate \
    -q '[.[] | select(.draft == true) | .tag_name] | join(", ")')
if [ -n "$drafts" ]; then
    echo "::error::refusing to clobber existing draft release(s): $drafts"
    echo "::error::Delete or publish the draft(s) manually, then re-run."
    exit 1
fi

# 2. The tag being released must not have a release yet.
if gh release view "$tag_name" --repo "$repository" >/dev/null 2>&1; then
    echo "::error::release '$tag_name' already exists"
    exit 1
fi

# 3. The previous version tag must have a published release.
tags=$(git tag --list 'v*.*.*' --sort=v:refname \
    | grep -E '^v[0-9]+\.[0-9]+\.[0-9]+$' || true)
if ! grep -qxF "$tag_name" <<< "$tags"; then
    echo "::error::current tag '$tag_name' not found among repository tags"
    exit 1
fi
prev_tag=$(awk -v tag="$tag_name" '$0 == tag { print prev; exit } { prev = $0 }' <<< "$tags")
if [ -z "$prev_tag" ]; then
    echo "No previous version tag before $tag_name; skipping previous-release check"
else
    is_draft=$(gh release view "$prev_tag" --repo "$repository" \
        --json isDraft --jq '.isDraft' 2>/dev/null) || {
        echo "::error::previous tag '$prev_tag' has no associated release; publish it before releasing '$tag_name'"
        exit 1
    }
    if [ "$is_draft" = "true" ]; then
        echo "::error::previous tag '$prev_tag' has only a draft release; publish it before releasing '$tag_name'"
        exit 1
    fi
    echo "Previous tag $prev_tag has a published release"
fi

echo "All release preconditions hold for $tag_name"
