git clone https://github.com/UniversityOfHawaii/uh-casdemo-docker.git
cd uh-casdemo-docker/build
docker build -t em/tomcat .
# run with /etc/localtime mounted so container runs with the same time zone (Hawaii, see aws-01-docker-install.sh)
docker run -v /etc/localtime:/etc/localtime:ro -d -p 80:8080 -p 443:8443 em/tomcat

