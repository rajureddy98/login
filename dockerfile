FROM tomcat:8
COPY target/auth-1.3.5.RELEASE.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [“catalina.sh”, “run”]
