FROM index.alauda.io/alaudaorg/gobuild
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
