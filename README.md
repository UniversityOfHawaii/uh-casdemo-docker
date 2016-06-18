 # uh-casdemo-docker

 Docker container for uh-casdemo
  
* run - run a prebuilt casdemo.war - proof of concept, war must be built with AWS IP manually
* build - build and run casdemo - AWS IP automatically used during build for war
* aws-docker-install.sh - setup AWS ami for docker
* demo.sh - run this on your AWS ami instance after aws-docker-install.sh - checkout, build, and run the build and run casdemo
 * TODO generate keystore password during build so it is not hard coded here in the docker file

