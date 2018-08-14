FROM http://172.265.456.54/zpyutest:sdfds
COPY bin/main /main
RUN chmod +x /main
ENTRYPOINT [ "/main" ]
