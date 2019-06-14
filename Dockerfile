FROM alpine:edge

ARG CONFD_VERSION=0.16.0

RUN apk add docker

RUN apk add curl bash
RUN curl -L https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 -o /tmp/confd && \
  mv /tmp/confd /usr/bin/confd && \
  chmod +x /usr/bin/confd

VOLUME /etc/confd

ENTRYPOINT ["/usr/bin/confd"]