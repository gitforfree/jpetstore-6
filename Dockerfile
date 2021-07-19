FROM tomcat:8.0-alpine
WORKDIR /app
RUN rm -rf /usr/local/tomcat/webapps/*.*
COPY target/jpetstore.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
