FROM ghcr.io/void-linux/void-glibc@sha256:4241b9d38aeebe0bff8118a71d4f32413f382a5928d6a74df77b846c10629dac
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
