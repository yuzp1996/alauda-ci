FROM debian:jessie
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
