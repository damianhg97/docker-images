FROM alpine:3.22

COPY --from=kong/deck:v1.67.0 /usr/local/bin/deck /usr/local/bin/
COPY --from=kong/deck:v1.67.0 /usr/local/bin/jq /usr/local/bin/

RUN apk add --no-cache \
    bash \
    ca-certificates

CMD ["bash"]