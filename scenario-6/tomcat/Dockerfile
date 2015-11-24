FROM tomcat:7.0.65-jre7
MAINTAINER "Roshan Deniyage"

RUN mkdir -p /usr/local/data/kube-test
RUN chmod -R 777 /usr/local/data/kube-test

ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD server.xml /usr/local/tomcat/conf/

CMD ["catalina.sh", "run"]
