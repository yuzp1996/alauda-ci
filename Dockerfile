FROM yugougou/fromalauda:123321
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
