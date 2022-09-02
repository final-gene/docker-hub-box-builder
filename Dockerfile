FROM php:8.1.10-cli-alpine3.15

LABEL maintainer="frank.giesecke@final-gene.de"

ENV BOX_VERSION=4.0.2

# hadolint ignore=DL3018
RUN apk add --no-cache --virtual=.persitent \
        bash \
        curl \
        git \
        subversion \
        openssh \
        openssl \
        mercurial

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN { \
        echo "memory_limit=-1"; \
        echo "date.timezone=${PHP_TIMEZONE:-UTC}"; \
        echo "phar.readonly=0"; \
    } | tee "${PHP_INI_DIR}/conf.d/box-builder.ini" \
    && curl -LSs \
        -o /usr/local/bin/box \
        "https://github.com/box-project/box/releases/download/${BOX_VERSION}/box.phar" \
    && chmod a+x /usr/local/bin/box

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD [""]
