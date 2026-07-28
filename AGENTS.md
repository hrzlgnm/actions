# AGENTS.md — hrzlgnm/actions

## Project

Collection of reusable GitHub Actions workflows. Published for external consumption via `uses: hrzlgnm/actions/.github/workflows/<file>@<tag>`.

## Conventions

- **Conventional commits** — All commits follow conventional commits format. `git-cliff` parses them for changelogs.
- **Semantic versioning** — Tags are `vX.Y.Z`.
- **SSH-signed commits** — Automated commits use SSH signing key from secrets.
- **Pinned dependencies** — All actions and tools pinned to SHA commit hashes with version comments (e.g. `# v3`). Renovate keeps them updated.
- **Copyright + SPDX** — Every workflow file has `# Copyright 2026 hrzlgnm` and `# SPDX-License-Identifier: MIT-0` headers.
- **`${{ }}` forbidden in `run:` blocks** — Use `env` vars instead.
- **Branch naming** — `feat/`, `fix/`, `chore/`, `docs/`, `refactor/`, `perf/`, `renovate/`, `deps/` trigger auto-labeling.

## Workflows

| File | Trigger | Purpose |
|---|---|---|
| `ci.yml` | push/PR/schedule | Main CI: detect changes, label PRs, typos, actionlint, alls-green gate |
| `release-drafter.yml` | push main | Delete old drafts, create new draft release |
| `update-changelog.yml` | push main | Run git-cliff, open auto-merge PR with changelog update |
| `release.yml` | workflow_dispatch | Wait for CI/changelog/drafter, generate final changelog, push, tag, publish |
| `typos-reusable.yml` | workflow_call | Spell check with `crate-ci/typos` |
| `actionlint-reusable.yml` | workflow_call | Lint workflow files |
| `docker-reusable.yml` | workflow_call | Build & push changed Dockerfiles to GHCR |
| `retry-failed-ci-reusable.yml` | workflow_call | Retry failed jobs from a given workflow |

## Lint

```sh
actionlint .github/workflows/*.yml
```

## Release process

1. Push to `main` triggers `release-drafter` (drafts release) and `update-changelog` (PR with changelog).
2. Changelog PR auto-merges, triggering another round of drafter + changelog.
3. Manually dispatch `release.yml` — it waits for all CI/drafter/changelog to finish, generates final changelog, disables branch protection, pushes tags, publishes the draft, re-enables protection.
