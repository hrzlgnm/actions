FROM ghcr.io/void-linux/void-glibc@sha256:59ee62518de285ae3561e59f13eefbb065cb60be03051b17046c08b4e9b4f8e2
RUN xbps-install -Syu xbps \
    && xbps-install -Syu \
    && xbps-install -Sy \
    base-devel \
    bash \
    cmake \
    cppcheck \
    fmt-devel \
    gflags-devel \
    git \
    libmnl-devel \
    ninja \
    spdlog \
    && xbps-remove -Ooy

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="actions GitHub cppcheck"
LABEL org.opencontainers.image.base.name="ghcr.io/void-linux/void-glibc"
