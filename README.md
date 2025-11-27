# Reusable actions and workflows

## Check spelling

### Quick Start

```yml
  typos:
    name: 📝 Check typos
    if: always()
    uses: hrzlgnm/actions/.github/workflows/typos-reusable.yml@main
```

## Build and push docker images

### Quick Start

```yml
docker:
    permissions:
      contents: read
      packages: write # Needed to push to GHCR

    uses: hrzlgnm/actions/.github/workflows/docker-reusable.yml@main
    with:
      branch: ${{ inputs.branch }}
```
