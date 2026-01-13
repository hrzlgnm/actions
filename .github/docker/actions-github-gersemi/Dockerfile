FROM python:3.14-slim@sha256:1f741aef81d09464251f4c52c83a02f93ece0a636db125d411bd827bf381a763 AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.25.1

FROM python:3.14-slim@sha256:1f741aef81d09464251f4c52c83a02f93ece0a636db125d411bd827bf381a763
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
