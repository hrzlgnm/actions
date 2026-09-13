# AGENTS.md — hrzlgnm/actions

## Project

Collection of reusable GitHub Actions workflows. Published for external consumption via `uses: hrzlgnm/actions/.github/workflows/<file>@<tag>`.

## Conventions

- **Conventional commits** — All commits follow conventional commits format. `release-please` parses them for changelogs.
- **Semantic versioning** — Tags are `vX.Y.Z`.
- **Signed commits** — Changelog commits are authored by `github-actions[bot]` via the GitHub API (Verified). Release version-bump commits use SSH signing key from secrets.
- **Pinned dependencies** — All actions and tools pinned to SHA commit hashes with version comments (e.g. `# v3`). Renovate keeps them updated.
- **Copyright + SPDX** — Every workflow file has `# Copyright 2026 hrzlgnm` and `# SPDX-License-Identifier: MIT-0` headers.
- **`${{ }}` forbidden in `run:` blocks** — Use `env` vars instead.
- **Branch naming** — `feat/`, `fix/`, `chore/`, `docs/`, `refactor/`, `perf/`, `renovate/`, `deps/` trigger auto-labeling by `ci.yml`'s labeler step.
- **No `--label` on PR create** — Labels are set automatically by the `label-pr` job in `ci.yml`. Do not pass `--label` to `gh pr create`.
- **README documents every action** — Adding a shared action or reusable workflow requires a `README.md` section with a `Quick Start` example (plus an inputs table when it takes inputs). CI does not enforce this; reviewers must.

## Workflows

| File | Trigger | Purpose |
|---|---|---|
| `ci.yml` | push/PR/schedule | Main CI: detect changes, label PRs, typos, actionlint, alls-green gate |
| `release.yml` | push main | release-please: open/update Release PR, tag, create draft release |
| `typos-reusable.yml` | workflow_call | Spell check with `crate-ci/typos` |
| `shell-lint-reusable.yml` | workflow_call | Install pinned shellcheck/shfmt and lint shell scripts |
| `actionlint-reusable.yml` | workflow_call | Lint workflow files |
| `docker-reusable.yml` | workflow_call | Build & push changed Dockerfiles to GHCR |
| `retry-failed-ci-reusable.yml` | workflow_call | Retry failed jobs from a given workflow |

## Lint

```sh
actionlint .github/workflows/*.yml
typos .
```

## Workflow

After making a change, commit, push, and create a PR — then stop. Don't wait for CI or follow up.

## Release process

Pushing to `main` triggers `release-please`, which opens (or updates) a
Release PR from `github-actions[bot]`. CI runs on the Release PR are
approved by the `approve-release-pr` job. Merging the Release PR tags
the release (`vX.Y.Z`, force-created) and creates a draft GitHub
release alongside it.
