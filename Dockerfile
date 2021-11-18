FROM ubuntu:16.04 
MAINTAINER "info@flipkart.com"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-9.0.55.tar.gz /root
COPY target/flipkart.war /root/apache-tomcat-9.0.55/webapps
ENTRYPOINT /root/apache-tomcat-9.0.55/bin/startup.sh && /bin/bash
