FROM python:3.14-slim@sha256:aa5be1196770ff8c5896e3da0848332cd73663a99a69fc7a2b6772e53111793c AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.24.0

FROM python:3.14-slim@sha256:aa5be1196770ff8c5896e3da0848332cd73663a99a69fc7a2b6772e53111793c
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
