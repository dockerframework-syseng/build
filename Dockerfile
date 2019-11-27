ARG TAG

FROM zerolabssyseng/base-consul:${TAG:-latest}
MAINTAINER "System Engineer (SysEng)"

RUN apk add --update build-base docker git openssh-client && \
    rm -rf /var/cache/apk/*

COPY rootfs/ /

ENTRYPOINT [ "/bin/sh", "/usr/local/build/run.sh" ]
CMD []

WORKDIR /usr/local/build
