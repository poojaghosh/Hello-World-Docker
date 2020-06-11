FROM openjdk:7
COPY . /target/myapp-*.war
WORKDIR /target/myapp.war
CMD ["java", "-jar", "/myapp.war"]