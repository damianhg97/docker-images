FROM alpine:3.24

ARG TARGETARCH
ARG ORAS_VERSION=1.3.4

RUN apk add --no-cache aws-cli ca-certificates \
    && apk add --no-cache --virtual .download-deps curl \
    && curl -fsSL \
        "https://github.com/oras-project/oras/releases/download/v${ORAS_VERSION}/oras_${ORAS_VERSION}_linux_${TARGETARCH}.tar.gz" \
        -o /tmp/oras.tar.gz \
    && tar -xzf /tmp/oras.tar.gz -C /usr/local/bin oras \
    && chmod +x /usr/local/bin/oras \
    && rm /tmp/oras.tar.gz \
    && apk del .download-deps

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["--version"]
