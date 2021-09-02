FROM python:3.9-slim

RUN python3 -m pip install antp

RUN mkdir -p /antp
WORKDIR /antp

ENV ANTP_TEMPLATE=/antp/template
ENV ANTP_OUTPUT=/antp/output/outfile

ENTRYPOINT [ "python3", "-m", "antp" ]
