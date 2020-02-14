rm /home/ec2-user/demo-0.0.1-SNAPSHOT.jar
cp demo-0.0.1-SNAPSHOT.jar /home/ec2-user
chown ec2-user:ec2-user /home/ec2-user/demo-0.0.1-SNAPSHOT.jar
systemctl start demo.service