FROM tomcat:8
COPY target/myapp-*.war /usr/local/tomcat/webapps/