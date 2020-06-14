FROM openjdk:7
COPY . /target/myapp-*.war
WORKDIR /target/myapp
ENTRYPOINT ["java", "Main"]