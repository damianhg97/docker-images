FROM alpine:3.24

ARG TARGETARCH

RUN apk add --no-cache aws-cli ca-certificates \
    && apk add --no-cache --virtual .download-deps curl \
    && curl -fsSL \
        "https://github.com/sigstore/cosign/releases/latest/download/cosign-linux-${TARGETARCH}" \
        -o /usr/local/bin/cosign \
    && chmod +x /usr/local/bin/cosign \
    && apk del .download-deps

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["version"]