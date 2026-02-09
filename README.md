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


