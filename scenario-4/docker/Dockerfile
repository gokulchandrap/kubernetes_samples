# Dockerfile to build WSO2 container
#
# Copyright 2014 H. Thilina C. Piyasundara
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Usage :- 
# Build the container
# 	cd <path>/dockerfiles/base
# 	sudo docker build -t WSO2container .
# 
# Run a container using the buled image
# 	sudo docker run -d -i -t --name WSO2Container1 WSO2container
#
# Login to the running container
# 	sudo docker attach WSO2Container1
#
# Exit from a attached container
# 	^p^q (Ctrl+p and Ctrl+q)
#
	
# Use Ubuntu base image
FROM ubuntu:14.04

# Maintainer
MAINTAINER Kasun de Silva <kasuns@wso2.com>

# Update the container and install relevant packages
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get update
#RUN apt-get -y upgrade
RUN apt-get -y install unzip

# Create /mnt/packs directory
RUN mkdir -p /mnt/packs
# Copy WSO2 product zip into /mnt/packs
ADD dist/apache-tomcat-7.0.56.zip /mnt/packs/
ADD dist/logstash-1.5.4.zip /mnt/packs
ADD dist/logstash.conf /mnt/
ADD dist/init.sh /mnt/
# eg :-
# ADD dist/<WSO2 product zip> /mnt/packs/

# Unzip WSO2 product
RUN unzip -q /mnt/packs/apache-tomcat-7.0.56.zip -d /mnt/
RUN unzip -q /mnt/packs/logstash-1.5.4.zip -d /mnt/
# eg :-
# RUN unzip -q /mnt/packs/<WSO2 product zip> -d /mnt/

# Copy Oracle JDK into /opt directory
ADD dist/jdk-8u66-linux-x64.tar.gz /opt/
# eg :-
# ADD dist/<Latest Oracle JDK tar> /opt/

# Create symlink to JDK as /opt/java
RUN ln -s /opt/jdk1.8.0_66 /opt/java
# eg :-
# RUN ln -s /opt/<JDK decompressed directory name> /opt/java

# Set environment variables
ENV HOME /root
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/java/bin
ENV JAVA_HOME /opt/java

WORKDIR /root

#Default ports
EXPOSE 8080 9200 9300

#ESB Specific ports
#EXPOSE 9763 9443 8280 8243


RUN chmod 755 /mnt/init.sh
CMD /mnt/init.sh
#CMD /mnt/wso2esb-24.8.1/bin/wso2server.sh
