FROM ghcr.io/void-linux/void-glibc@sha256:28fdbec439e19df1016cf5d9bb059618d031c710d798fe8bd72716928b221d3b
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
