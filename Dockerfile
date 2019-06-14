FROM alpine:edge

ARG CONFD_VERSION=0.16.0

RUN apk add docker

RUN apk add curl bash
RUN curl -fsL https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 -o /bin/confd && chmod +x /bin/confd