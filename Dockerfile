FROM scratch
COPY . /target/*.war
WORKDIR /target/myapp
RUN myapp
CMD ["/hello"]