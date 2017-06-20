FROM debian:jessie
COPY bin/main /main
ENTRYPOINT [ "/main" ]
