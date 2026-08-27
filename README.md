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

Composite action that runs `snapcraft pack --use-lxd`, injecting the workflow
token as `GH_TOKEN` so an in-build `gh attestation verify` step can
authenticate to GitHub (gh requires a token even for public repos).

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

