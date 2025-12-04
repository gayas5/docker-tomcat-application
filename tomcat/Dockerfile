FROM alpine:3.18

LABEL maintainer="Techie_Horizon"

# Install Java & utilities
RUN apk update && \
    apk add --no-cache openjdk17 curl bash

# Set Java env
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

# Create tomcat directory
RUN mkdir -p /usr/local/tomcat
WORKDIR /usr/local/tomcat

# Download Tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.14/bin/apache-tomcat-11.0.14.tar.gz && \
    tar -xvf apache-tomcat-11.0.14.tar.gz && \
    mv apache-tomcat-11.0.14/* . && \
    rm -rf apache*

# Copy MySQL datasource config
COPY context.xml /usr/local/tomcat/conf/context.xml

# Copy WAR file
COPY ../app/sample.war /usr/local/tomcat/webapps/

# Persistent logs
VOLUME ["/usr/local/tomcat/logs"]

EXPOSE 8080

CMD ["bin/catalina.sh", "run"]

FROM alpine:3.18

LABEL maintainer="Techie_Horizon"

# Install Java & utilities
RUN apk update && \
    apk add --no-cache openjdk17 curl bash

# Set Java env
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

# Create tomcat directory
RUN mkdir -p /usr/local/tomcat
WORKDIR /usr/local/tomcat

# Download Tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.14/bin/apache-tomcat-11.0.14.tar.gz && \
    tar -xvf apache-tomcat-11.0.14.tar.gz && \
    mv apache-tomcat-11.0.14/* . && \
    rm -rf apache*

# Copy MySQL datasource config
COPY context.xml /usr/local/tomcat/conf/context.xml

# Copy WAR file
COPY ../app/sample.war /usr/local/tomcat/webapps/

# Persistent logs
VOLUME ["/usr/local/tomcat/logs"]

EXPOSE 8080

CMD ["bin/catalina.sh", "run"]


