# Reusable actions and workflows

## Check spelling

### Quick Start

```yml
jobs:
  typos:
    name: 📝 Check typos
    if: always()
    uses: hrzlgnm/actions/.github/workflows/typos-reusable.yml@v1.2.0
```

## Build and push docker images

### Quick Start

```yml
jobs:
  docker:
    permissions:
      contents: read
      packages: write # Needed to push to GHCR

    uses: hrzlgnm/actions/.github/workflows/docker-reusable.yml@v1.2.0
    with:
      branch: ${{ inputs.branch }}
```

## Lint GitHub actions

### Quick Start

```yml
jobs:
  actionlint:
    permissions:
      contents: read

    uses: hrzlgnm/actions/.github/workflows/actionlint-reusable.yml@v2.1.0
```

## Lint shell scripts

Installs pinned `shellcheck`/`shfmt` (checksum-verified, retried) and lints
a script directory with `shellcheck -S warning` plus `shfmt --diff`. A lint
finding fails fast without retries.

### Quick Start

```yml
jobs:
  lint-scripts:
    uses: hrzlgnm/actions/.github/workflows/shell-lint-reusable.yml@v2.10.0
    with:
      runs-on: ubuntu-latest
      scripts-dir: packaging/aur
```

## Retry failed CI runs

### Quick Start

```yml
jobs:
  retry-failed:
    permissions:
      actions: write
      contents: read

    uses: hrzlgnm/actions/.github/workflows/retry-failed-ci-reusable.yml@v2.2.0
    with:
      workflow: ci.yml
      hours: 24
      events: "pull_request,push"
```

## Retry commands

> [!WARNING]
> Steps whose `GITHUB_OUTPUT` values are read by later steps must use
> `nick-fields/retry` directly instead — composite boundaries swallow outputs.

Composite action that retries a shell command with `nick-fields/retry`
(`node24`, 5 attempts, 10s wait between attempts, warning on retry).

### Quick Start

```yml
jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: read
    steps:
      - uses: actions/checkout@v7
      - name: Install dependencies
        uses: hrzlgnm/actions/.github/actions/retry@v2.9.0
        with:
          command: sudo apt-get update && sudo apt-get install -y libwebkit2gtk-4.1-dev
```

| Input | Required | Default |
| --- | --- | --- |
| `command` | yes | — |
| `timeout_minutes` | no | `'5'` |
| `max_attempts` | no | `'5'` |
| `retry_wait_seconds` | no | `'10'` |
| `warning_on_retry` | no | `'true'` |
| `shell` | no | `'bash'` |

## AUR packaging

Composite action for Arch Linux AUR publishers running in an Arch
builder container as root with a `runner` user. `aur-setup` chains the
full in-job setup (fix checkout ownership, install the AUR SSH key,
clone the AUR repo, verify the version) in one pinned step.

### Quick Start

```yml
    - name: Setup AUR packaging
      if: github.event.release.tag_name
      uses: hrzlgnm/actions/.github/actions/aur-setup@v2.12.0
      with:
        package-name: ${{ matrix.package.name }}
        release-version: ${{ needs.release-info.outputs.version }}
        deploy-key: ${{ secrets.AUR_DEPLOY_KEY }}
```

| Input | Required | Default |
| --- | --- | --- |
| `package-name` | yes | — |
| `release-version` | yes | — |
| `deploy-key` | yes | — |

An equal or higher `pkgver` in the AUR checkout means the release is
already published, so the step succeeds and reports no update instead
of failing. Gate the publish step on the output to stop normally:

```yml
    - name: Setup AUR packaging
      id: setup
      uses: hrzlgnm/actions/.github/actions/aur-setup@v2.12.0
      with:
        package-name: ${{ matrix.package.name }}
        release-version: ${{ needs.release-info.outputs.version }}
        deploy-key: ${{ secrets.AUR_DEPLOY_KEY }}

    - name: Generate PKGBUILD update and publish
      if: steps.setup.outputs.needs_update != 'false'
      uses: hrzlgnm/actions/.github/actions/retry@v2.12.0
      with:
        command: su runner -c "./packaging/aur/publish-aur.sh"
```

| Output | Value |
| --- | --- |
| `needs_update` | `'true'` when the release is newer, `'false'` when already published or ahead |

### Lint generated PKGBUILD

Runs `namcap` and `makepkg --verifysource` (retrying) for a generated
`PKGBUILD`. A leading `~` in the directory is expanded.

```yml
    - uses: hrzlgnm/actions/.github/actions/aur-makepkg-lint@v2.13.0
      with:
        workdir: ~/lint
```

| Input | Required | Default |
| --- | --- | --- |
| `workdir` | yes | — |

