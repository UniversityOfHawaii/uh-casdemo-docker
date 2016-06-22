 # uh-casdemo-docker

 Docker container for uh-casdemo
  
* run - run a prebuilt casdemo.war - proof of concept, war must be built with AWS IP manually - build is a better demo
* build - build and run casdemo - AWS IP automatically used during build for war
* aws-00-install-demo.sh - given a AWS IP, install dependencies, build and run casdemo
 * aws-01-docker-install.sh - setup AWS ami for docker
 * aws-02-demo.sh - run this on your AWS ami instance after aws-docker-install.sh - checkout, build, and run the build and run casdemo

