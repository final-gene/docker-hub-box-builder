FROM php:7.2-cli-alpine3.7

LABEL maintainer="frank.giesecke@final-gene.de"

ENV BOX2_VERSION 2.7.5

RUN apk add --no-cache --virtual=.build-deps bash

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache --virtual=.persitent \
        curl=7.60.0-r1 \
        git=2.15.2-r0 \
        subversion=1.9.7-r0 \
        openssh=7.5_p1-r8 \
        openssl=1.0.2o-r0 \
        mercurial=4.4.1-r0

RUN { \
    echo "memory_limit=-1"; \
    echo "date.timezone=${PHP_TIMEZONE:-UTC}"; \
    echo "phar.readonly=0"; \
} | tee "${PHP_INI_DIR}/conf.d/box-builder.ini"

RUN curl -LSs \
        -o /usr/local/bin/box \
        "https://github.com/box-project/box2/releases/download/${BOX2_VERSION}/box-${BOX2_VERSION}.phar" \
    && chmod a+x /usr/local/bin/box

RUN apk del .build-deps

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD [""]
