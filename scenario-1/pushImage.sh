#!/bin/bash
CURRENT_DIR=`pwd`
SOURCE_DIR=$CURRENT_DIR/fooApp
DOCKER_IMG_BUILD_DIR=$CURRENT_DIR/../docker/tomcat/

#build new code
cd $SOURCE_DIR
mvn clean install

#copy new artifact to image building location
cp $SOURCE_DIR/target/*.war $DOCKER_IMG_BUILD_DIR/
#build new image with new artifact
cd $DOCKER_IMG_BUILD_DIR
IMAGE_ID=$(sudo docker build --force-rm=false -t manjula/tomcat --file $DOCKER_IMG_BUILD_DIR/DockerFile . | awk '/Successfully built/{print $NF}')

#push new image to docker hub
IMAGE_VERSION=`date +%d-%m-%Y-%H-%M`
sudo docker tag -f $IMAGE_ID manjula/tomcat:$IMAGE_VERSION
sudo docker login
sudo docker push manjula/tomcat:$IMAGE_VERSION
echo 'Successfully pushed manjula/tomcat:'$IMAGE_VERSION
