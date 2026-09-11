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

## Build snap

Composite action that runs `snapcraft pack --use-lxd`. No token is injected:
provenance verification uses the offline bundle approach (`fetch-attestation` +
`gh attestation verify --bundle`), so the build container never needs `GH_TOKEN`.

### Quick Start

```yml
jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: read
    steps:
      - uses: actions/checkout@v7
      - uses: canonical/setup-lxd@v1
      - run: sudo snap install snapcraft --classic
      - name: Build snap
        uses: hrzlgnm/actions/.github/actions/build-snap@v2.7.0
        with:
          verbosity: brief
```

The `with: verbosity` input is optional and defaults to `brief`.

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

