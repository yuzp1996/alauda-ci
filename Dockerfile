FROM yugougou/fromalauda:v1.0
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
