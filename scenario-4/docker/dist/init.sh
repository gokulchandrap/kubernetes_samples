#!/bin/bash
ln -s /lib/x86_64-linux-gnu/libcrypt.so.1 /usr/lib/x86_64-linux-gnu/libcrypt.so
/bin/bash /mnt/apache-tomcat-7.0.56/bin/catalina.sh start
/mnt/logstash-1.5.4/bin/logstash agent -f /mnt/logstash.conf

