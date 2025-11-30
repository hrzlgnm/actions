FROM ghcr.io/void-linux/void-glibc@sha256:59ee62518de285ae3561e59f13eefbb065cb60be03051b17046c08b4e9b4f8e2
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
