echo "In Clean_up.sh"
echo `docker ps -a | grep "jboss_container"`
if [[ ! -z `docker ps -a | grep "jboss_container"` ]]; then
docker rm -f jboss_container
else 
 echo "There is no container named jboss_container"
fi
