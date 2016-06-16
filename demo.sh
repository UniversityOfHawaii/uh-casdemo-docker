git clone https://github.com/UniversityOfHawaii/uh-casdemo-docker.git
cd uh-casdemo-docker/build
docker build -t em/tomcat .
docker run -v /etc/localtime:/etc/localtime:ro -d -p 80:8080 -p 443:8443 em/tomcat

