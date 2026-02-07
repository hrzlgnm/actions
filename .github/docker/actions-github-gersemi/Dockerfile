FROM python:3.14-slim@sha256:486b8092bfb12997e10d4920897213a06563449c951c5506c2a2cfaf591c599f AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.25.4

FROM python:3.14-slim@sha256:486b8092bfb12997e10d4920897213a06563449c951c5506c2a2cfaf591c599f
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
