FROM openjdk:7
COPY . /target/myapp-0.0.1-SNAPSHOT
WORKDIR /target/myapp-0.0.1-SNAPSHOT
RUN javac Main.java
CMD ["java", "Main"]