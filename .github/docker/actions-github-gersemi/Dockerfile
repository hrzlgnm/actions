FROM python:3.14-slim@sha256:38b6cc0b45b13563b14615a9b51dd07ac519b9d3cbd945df114477fe0cc988f1 AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.25.1

FROM python:3.14-slim@sha256:38b6cc0b45b13563b14615a9b51dd07ac519b9d3cbd945df114477fe0cc988f1
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
