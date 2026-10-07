FROM ubuntu:24.04

COPY --from=kong/deck:v1.67.0 /usr/local/bin/deck /usr/local/bin/
COPY --from=kong/deck:v1.67.0 /usr/local/bin/jq /usr/local/bin/

# Không đặt ENTRYPOINT → mặc định sẽ vào bash
# USER 65532:65532   # nếu muốn non-root thì bật dòng này

CMD ["bash"]
