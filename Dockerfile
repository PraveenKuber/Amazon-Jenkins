FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
RUN mkdir tomcat
RUN apt-get install -y wget
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz 
RUN tar -xvf apache-tomcat-9.0.89.tar.gz
RUN cd  /apache-tomcat-9.0.89/webapps
RUN echo $PWD
COPY ./Amazon-Web/target/Amazon.war  /apache-tomcat-9.0.89/webapps
WORKDIR /apache-tomcat-9.0.89/
CMD sh bin/catalina.sh run
EXPOSE 8081


