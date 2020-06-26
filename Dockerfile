FROM tomcat:9
MAINTAINER piyushsinha.cts@gmail.com
ADD . /target/myapp-*.war /usr/local/tomcat
RUN ["rm", "-fr", "/usr/local/tomcat"]
CMD ["catalina.sh", "run"]