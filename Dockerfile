FROM openjdk:19-jdk-alpine3.16
RUN apk update && apk add --no-cache git
RUN git clone https://github.com/amoghazy-organization/cloud-config-repo /etc/eos-cloud-config-repo
ADD target/server-0.0.1-RELEASE.jar eos-cloud-config-api.jar
CMD ["java","-jar","eos-cloud-config-api.jar"]
