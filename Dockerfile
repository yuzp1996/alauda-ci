FROM index.alauda.cn/alaudaorg/gobuild
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
