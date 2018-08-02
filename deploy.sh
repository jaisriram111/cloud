#!bin/bash
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ]; then
for i in `cat ip.txt`
do
  echo "deploy war file $i"
  sshpass -p "123" scp target/sbibank.war siva@$i:/home/siva/soft/
  sleep 3

  echo "start the $i server"
  sshpass -p "123" ssh siva@$i "JAVA_HOME" "Tomcate path"
done
echo "deploy success"
fi
