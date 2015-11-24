This scenario shows how to use "gitRepo" type volume to use git based sync mechanism for syncing artifacts

1. Go to tomcat folder and build the docker file.
   docker build -t <repository>/<image-name> .
   eg : docker build -t roshancd/kube .

2. Push built docker image to docker hub.
   docker push <repository>/<image-name>
   eg : docker push roshancd/kube

3. Go to the root foler and change the docker image name, gir repo url and git repo revision with your values in the "tomcat-rc.yaml" file.   

4. Go to the root folder and create the tomcat replication controller.
   kubectl create -f tomcat-rc.yaml

5. to the root folder and create the service.
   kubectl create -f tomcat-service.yaml




