FROM ghcr.io/void-linux/void-glibc@sha256:a1c486c9480b13304b67c651e8cf444588019de6e94fb07108c14ea3be631d9a
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
