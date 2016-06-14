FROM tomcat:8-jre8
MAINTAINER "Erik Meade <uh-casdemo-docker-m@eghm.net>"

#RUN apt-get update -y 
# /home/casdemod/external-conf as defined in uh-casdemo/src/main/filter/dev-test.properties
RUN mkdir -p mkdir -p /home/casdemod/external-conf

#RUN $JAVA_HOME/bin/keytool -genkey -dname "cn=Erik Meade, ou=Container, o=UH, l=Honolulu, st=HI, c=US" -alias tomcat -keyalg RSA

ADD keystore /root/.keystore
ADD server.xml /usr/local/tomcat/conf/
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD casdemo-dev.war /usr/local/tomcat/webapps/casdemo.war
ADD overrides.properties /home/casdemod/external-conf

