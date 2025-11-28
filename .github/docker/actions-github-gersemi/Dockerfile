ARG PYTHON_VERSION=3.12
FROM python:3-slim AS build
RUN pip install --no-cache-dir gersemi==0.23.2

FROM python:3-slim
ARG PYTHON_VERSION
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python${PYTHON_VERSION}/site-packages /usr/local/lib/python${PYTHON_VERSION}/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3-slim"
