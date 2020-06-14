FROM openjdk:7
COPY . /target/myapp-*.war
WORKDIR /target/myapp
RUN javac Main.java
ENTRYPOINT ["java", "Main"]