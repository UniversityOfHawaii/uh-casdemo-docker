FROM tomcat:8-jre8
MAINTAINER "Erik Meade <uh-casdemo-docker-m@eghm.net>"

# TODO FINISH, THIS IS A DRAFT WIP

RUN apt-get update && apt-get install -y \
	git \
	maven 

RUN git clone https://github.com/fduckart/uh-casdemo.git && mkdir -p /home/casdemod/external-conf/
# /home/casdemod/external-conf/overrides.properteis as defined in uh-casdemo/src/main/filter/dev-test.properties
# TODO get IP for base-url and put in overrides.properties 
ADD overrides.properties /home/casdemod/external-conf
RUN cd uh-casdemo && mvn -Denv=test clean package && cp target/casdemo.war /usr/local/tomcat/webapps/

# SSL
# TODO handle pass phrase
RUN $JAVA_HOME/bin/keytool -genkey -dname "cn=Erik Meade, ou=Container, o=UH, l=Honolulu, st=HI, c=US" -alias tomcat -keyalg RSA
ADD server.xml /usr/local/tomcat/conf/

