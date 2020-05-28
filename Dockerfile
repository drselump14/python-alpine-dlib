FROM python:3.8-alpine AS dlib-base

RUN apk update
RUN apk add cmake git build-base

RUN cd ~ && \
    mkdir -p dlib && \
    git clone -b 'v19.19' --single-branch https://github.com/davisking/dlib.git dlib/ && \
    cd  dlib/ && \
    python setup.py install
