FROM tomcat:7
MAINTAINER piyushsinha.cts@gmail.com
RUN ["rm", "-fr", "C:\Users\Piyush\apache7\webapps\ROOT"]
COPY . /target/myapp-0.0.1-SNAPSHOT.war
WORKDIR C:\Users\Piyush\apache7\webapps\ROOT\myapp.war
CMD ["catalina.bat", "run"]