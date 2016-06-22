if [ -z "$1" ]; then
    echo "Usage: aws-00-install-demo.sh AWS_IP"
    exit
fi

export AWSIP=$1
export AWSUSER=ec2-user
export AWSID=~/.ssh/ec2-user_id_rsa

scp -i $AWSID aws*.sh $AWSUSER@$AWSIP:

ssh -i $AWSID -l $AWSUSER $AWSIP ./aws-01-docker-install.sh
ssh -i $AWSID -l $AWSUSER $AWSIP ./aws-02-demo.sh

