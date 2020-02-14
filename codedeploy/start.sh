rm /home/ec2-user/demo-0.0.1-SNAPSHOT.jar
cp demo-0.0.1-SNAPSHOT.jar /home/ec2-user
chown ec2-user:ec2-user /home/ec2-user/demo-0.0.1-SNAPSHOT.jar
sudo systemctl start demo.service
timeout 30 bash -c 'while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:8080/demo)" != "200" ]]; do sleep 5; done' || false