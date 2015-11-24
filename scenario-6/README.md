This scenario uses sidecar concept to sync git artifacts. There is a seperate conainer for git syncing called git-sync.
The git-sync data is saved in a common mounted volume which is common to git-sync container and webserver container.
The webserver container get the artifact from common mounted volume and depoy in the web server.

To try out the scenario follow the steps below :

1. Go to git-sync folder and build the git-sync docker and push to some docker registry. (eg: docker hub)

docker build -t <some-registry>/git-sync .
docker push <some-registry>/git-sync

eg : docker build -t roshancd/git-sync .
     docker push roshancd/git-sync


2. Go to tomcat folder and build the tomcat docker and push to some docker registry. (eg : docker hub)

docker build -t <some-registry>/tomcat .
docker push <some-registry>/tomcat

eg : docker build -t roshancd/kube .
     docker push roshancd/kube


3. Go to config folder and create the pod as a replicaiton controller 

   kubectl create -f tomcat-rc.yaml

4. Go to config folder and create the service

   kubectl create -f tomcat-service.yaml





