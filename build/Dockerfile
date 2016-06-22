FROM tomcat:8-jre8
MAINTAINER "Erik Meade <uh-casdemo-docker-m@eghm.net>"

# TODO FINISH, THIS IS A DRAFT WIP

RUN apt-get update && apt-get install -y \
        openjdk-8-jdk \
        git \
        maven

# doing something wrong with overrides.properties....
#RUN git clone https://github.com/fduckart/uh-casdemo.git && mkdir -p /home/casdemod/external-conf/
## /home/casdemod/external-conf/overrides.properteis as defined in uh-casdemo/src/main/filters/dev-test.properties
#ADD overrides.properties /home/casdemod/external-conf/overrides.tmpl
#RUN sed "s|AWSIP|$(curl http://169.254.169.254/latest/meta-data/public-ipv4)|"  /home/casdemod/external-conf/overrides.tmpl >  /home/casdemod/external-conf/overrides.properties && cd uh-casdemo && mvn -Denv=test clean package && cp target/casdemo.war /usr/local/tomcat/webapps/

RUN git clone https://github.com/fduckart/uh-casdemo.git && mv uh-casdemo/src/main/filters/env-dev.properties uh-casdemo/src/main/filters/env-dev.properties.bak && sed "s|localhost:8080|$(curl http://169.254.169.254/latest/meta-data/public-ipv4)|"  uh-casdemo/src/main/filters/env-dev.properties.bak >  uh-casdemo/src/main/filters/env-dev.properties && cd uh-casdemo && mvn -Denv=dev clean package && cp target/casdemo.war /usr/local/tomcat/webapps/

# SSL
ADD server.xml /usr/local/tomcat/conf/server.tmpl
# use sed to replace PASSPHRASE in server.tmpl with a randomly generated password then grep the password out when creating the keystore
RUN sed "s|PASSPHRASE|$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)|" /usr/local/tomcat/conf/server.tmpl > /usr/local/tomcat/conf/server.xml && $JAVA_HOME/bin/keytool -genkey -dname "cn=Author Name, ou=Container, o=UH, l=Honolulu, st=HI, c=US" -alias tomcat -keyalg RSA -storepass $(grep keystorePass /usr/local/tomcat/conf/server.xml | cut -d\" -f 2)
