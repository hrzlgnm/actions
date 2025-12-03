FROM python:3.14-slim@sha256:44513520b81338d2d12499a59874220b05988819067a2cbac4545750a68e4b2b AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.23.2

FROM python:3.14-slim@sha256:44513520b81338d2d12499a59874220b05988819067a2cbac4545750a68e4b2b
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
