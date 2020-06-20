FROM scratch
COPY . /target/myapp-0.0.1-SNAPSHOT.war
WORKDIR /target/myapp-0.0.1-SNAPSHOT
RUN myapp-0.0.1-SNAPSHOT
CMD ["/hello"]