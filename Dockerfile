FROM tomcat:7
MAINTAINER piyushsinha.cts@gmail.com
RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY . /target/myapp-0.0.1-SNAPSHOT.war
WORKDIR /usr/local/tomcat/webapps/myapp.war
CMD ["catalina.bat", "run"]