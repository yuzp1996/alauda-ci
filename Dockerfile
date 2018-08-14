FROM yugougou/ping:v1.1
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
