FROM golang:1.17
MAINTAINER libsgh
ENV GIN_MODE=release
WORKDIR /app
COPY run.sh /app
RUN chmod +x /app/run.sh
#RUN sh /app/getPanIndex.sh
#CMD ["/app/PanIndex", "-config=/app/config.json"]
CMD ["/app/run.sh"]
ENTRYPOINT ["/bin/bash"]
