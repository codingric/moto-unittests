FROM python:3.9-alpine3.12

ADD setup.py setup.py

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN mkdir /root/.aws \
    && echo "[default]\naws_access_key_id = mock\naws_secret_access_key = mock" > /root/.aws/credentials \
    && python -m pip install -U pip \
    && apk add --no-cache openssl-dev libffi-dev bash make \
    && apk add --no-cache --virtual .build-deps build-base python3-dev linux-headers musl-dev gcc \
    && pip install setuptools-rust \
    && python setup.py install \
    && apk del .build-deps