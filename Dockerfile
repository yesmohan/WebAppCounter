FROM tomcat:latest
COPY target/my-farm.war /usr/lib/tomcat/webapps/my-farm.war

