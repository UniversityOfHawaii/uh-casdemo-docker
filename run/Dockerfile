FROM tomcat:8-jre8
MAINTAINER "Erik Meade <uh-casdemo-docker-m@eghm.net>"

#RUN apt-get update -y 
# /home/casdemod/external-conf as defined in uh-casdemo/src/main/filter/dev-test.properties
RUN mkdir -p mkdir -p /home/casdemod/external-conf

ADD keystore /root/.keystore
ADD server.xml /usr/local/tomcat/conf/
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD casdemo.war /usr/local/tomcat/webapps/
ADD overrides.properties /home/casdemod/external-conf

