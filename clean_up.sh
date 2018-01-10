Container_status=`docker ps -a | grep "jboss_container"`
if [[ ! -z "$Container_status" ]]; then 
     docker rm -f jboss_container
else 
 echo "There is no container named jboss_container"
fi
