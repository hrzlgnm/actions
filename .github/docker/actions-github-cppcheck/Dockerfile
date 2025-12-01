FROM ghcr.io/void-linux/void-glibc@sha256:f5d88cafc86032345532fdeacaf0c84e6226c032bbfbe14130bbe0d9b11ec76c
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
