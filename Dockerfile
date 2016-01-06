FROM java:8

ENV FLYWAY_VERSION 3.2.1
ENV FLYWAY_URL https://bintray.com/artifact/download/business/maven

RUN wget --no-check-certificate $FLYWAY_URL/flyway-commandline-$FLYWAY_VERSION-linux-x64.tar.gz && \
    tar -xzvf flyway-commandline-$FLYWAY_VERSION-linux-x64.tar.gz \
    -C /opt --strip-components 1 && chmod +x /opt/flyway

WORKDIR /opt

ENTRYPOINT ["./flyway"]
CMD ["--help"]
