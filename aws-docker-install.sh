sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
# security tools will require times are in synch, set time zone and pray we don't have to NTP
sudo ln -sf /usr/share/zoneinfo/Pacific/Honolulu /etc/localtime
exit
