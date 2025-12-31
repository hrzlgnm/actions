FROM python:3.14-slim@sha256:f7864aa85847985ba72d2dcbcbafd7475354c848e1abbdf84f523a100800ae0b AS build
RUN pip install --root-user-action=ignore --no-cache-dir gersemi==0.25.0

FROM python:3.14-slim@sha256:f7864aa85847985ba72d2dcbcbafd7475354c848e1abbdf84f523a100800ae0b
COPY --from=build /usr/local/bin/gersemi /usr/local/bin/
COPY --from=build /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages

LABEL org.opencontainers.image.source="https://github.com/hrzlgnm/actions"
LABEL org.opencontainers.image.title="Actions GitHub Gersemi"
LABEL org.opencontainers.image.base.name="python:3.14-slim"
