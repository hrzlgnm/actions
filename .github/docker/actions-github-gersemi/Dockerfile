FROM python:3-slim AS build
RUN pip install --no-cache-dir gersemi

FROM python:3-slim
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.*/site-packages /usr/local/lib/python3.*/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3-slim"



