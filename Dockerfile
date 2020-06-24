FROM tomcat:7
MAINTAINER piyushsinha.cts@gmail.com
ADD . /target/myapp-0.0.1-SNAPSHOT.war /target/myapp
RUN ["rm", "-fr", "/target/webapp"]
CMD ["catalina.bat", "run"]