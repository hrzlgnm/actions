# AGENTS.md — hrzlgnm/actions

## Project

Collection of reusable GitHub Actions workflows. Published for external consumption via `uses: hrzlgnm/actions/.github/workflows/<file>@<tag>`.

## Conventions

- **Conventional commits** — All commits follow conventional commits format. `git-cliff` parses them for changelogs.
- **Semantic versioning** — Tags are `vX.Y.Z`.
- **Signed commits** — Changelog commits are authored by `github-actions[bot]` via the GitHub API (Verified). Release version-bump commits use SSH signing key from secrets.
- **Pinned dependencies** — All actions and tools pinned to SHA commit hashes with version comments (e.g. `# v3`). Renovate keeps them updated.
- **Copyright + SPDX** — Every workflow file has `# Copyright 2026 hrzlgnm` and `# SPDX-License-Identifier: MIT-0` headers.
- **`${{ }}` forbidden in `run:` blocks** — Use `env` vars instead.
- **Branch naming** — `feat/`, `fix/`, `chore/`, `docs/`, `refactor/`, `perf/`, `renovate/`, `deps/` trigger auto-labeling by `ci.yml`'s labeler step.
- **No `--label` on PR create** — Labels are set automatically by the `label-pr` job in `ci.yml`. Do not pass `--label` to `gh pr create`.

## Workflows

| File | Trigger | Purpose |
|---|---|---|
| `ci.yml` | push/PR/schedule | Main CI: detect changes, label PRs, typos, actionlint, alls-green gate |
| `release-drafter.yml` | push main | Delete old drafts, create new draft release |
| `update-changelog.yml` | nightly schedule | Run git-cliff, open auto-merge PR with changelog update |
| `release.yml` | workflow_dispatch | Wait for CI/changelog/drafter, generate final changelog, push, tag, publish |
| `typos-reusable.yml` | workflow_call | Spell check with `crate-ci/typos` |
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

1. Pushing to `main` triggers `release-drafter` (drafts release).
2. The nightly `update-changelog` workflow opens an auto-merge PR with the unreleased changelog, authored by `github-actions[bot]`.
3. Manually dispatch `release.yml` — it generates the versioned changelog, disables branch protection, pushes tags, publishes the draft, re-enables protection.
