FROM amazon/aws-cli:latest

ARG TARGETARCH

RUN curl -fsSL \
        "https://github.com/sigstore/cosign/releases/latest/download/cosign-linux-${TARGETARCH}" \
        -o /usr/local/bin/cosign \
    && chmod +x /usr/local/bin/cosign

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["version"]