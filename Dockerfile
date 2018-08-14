FROM yugougou/ping:123231
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
