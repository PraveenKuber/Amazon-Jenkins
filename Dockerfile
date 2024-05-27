FROM ubuntu:20.04
WORKDIR /app
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk wget && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.89/bin/apache-tomcat-9.0.89.tar.gz && \
    tar -xvf apache-tomcat-9.0.89.tar.gz && \
    mv apache-tomcat-9.0.89 tomcat && \
    rm apache-tomcat-9.0.89.tar.gz
COPY Amazon-Jenkins/Amazon-Core/target/Amazon.war /app/tomcat/webapps/ 
CMD ["/app/tomcat/bin/catalina.sh", "run"] 
EXPOSE 8081


