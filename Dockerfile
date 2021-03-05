FROM python:3.9

WORKDIR /workspace/python

ENV VIRTUAL_ENV=/workspace/python/env
RUN python3 -m venv ${VIRTUAL_ENV}
ENV PATH="${VIRTUAL_ENV}/bin:$PATH"

RUN python -m pip install --upgrade pip

ENTRYPOINT ["tail", "-f", "/dev/null"]
