FROM python:3.14-slim@sha256:fd2aff39e5a3ed23098108786a9966fb036fdeeedd487d5360e466bb2a84377b AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.24.0

FROM python:3.14-slim@sha256:fd2aff39e5a3ed23098108786a9966fb036fdeeedd487d5360e466bb2a84377b
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
