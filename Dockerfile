FROM https://10.23.34.34/debian:jessie
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
