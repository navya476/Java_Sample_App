Container_status=`docker ps -a | grep "jboss_container"`
if [ ! -z "$Container_status" ];
then
     docker rm jboss_container -f
else
     echo "There is no container named jboss_container"
fi
