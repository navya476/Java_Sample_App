Container_status=`docker ps -a | grep "jboss_container"`
Image_status=`docker ps -a | grep "jboss_application"`
if [ ! -z "$Image_status" ];
then
     docker rmi jboss_application -f
else
     echo "There is no container named jboss_container"
fi

if [ ! -z "$Container_status" ];
then
     docker rm jboss_container -f
else
     echo "There is no container named jboss_container"
fi
