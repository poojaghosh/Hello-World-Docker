FROM tomcat:7
MAINTAINER piyushsinha.cts@gmail.com
ADD . /target/myapp-0.0.1-SNAPSHOT.war /target/myapp.war
RUN ["rm", "-fr", "/target/webapp.war"]
CMD ["catalina.bat", "run"]