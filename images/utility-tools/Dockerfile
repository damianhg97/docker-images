FROM alpine:3.22

ARG TARGETARCH

RUN apk add --no-cache \
        bash \
        ca-certificates \
        curl \
        git

RUN curl -fsSL "https://github.com/mikefarah/yq/releases/latest/download/yq_linux_${TARGETARCH}" \
        -o /usr/local/bin/yq \
    && chmod +x /usr/local/bin/yq

WORKDIR /workspace

CMD ["bash"]