FROM ghcr.io/void-linux/void-glibc@sha256:28fdbec439e19df1016cf5d9bb059618d031c710d798fe8bd72716928b221d3b
RUN xbps-install -Syu xbps \
    && xbps-install -Syu \
    && xbps-install -Sy \
    bash \
    clang-tools-extra \
    findutils \
    git \
    && xbps-remove -Ooy

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="actions GitHub Clang Format"
LABEL org.opencontainers.image.base.name="ghcr.io/void-linux/void-glibc"
