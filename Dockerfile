FROM openjdk:7
COPY . /target/myapp-0.0.1-SNAPSHOT.war
WORKDIR /target/myapp-0.0.1-SNAPSHOT.war
RUN javac Main.java
CMD ["java", "-jar", "myapp-0.0.1-SNAPSHOT.war"]