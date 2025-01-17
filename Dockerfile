FROM chainguard/jdk:latest
RUN git clone https://github.com/amoghazy-organization/cloud-config-repo /etc/eos-cloud-config-repo
ADD target/server-0.0.1-RELEASE.jar eos-cloud-config-api.jar
CMD ["java","-jar","eos-cloud-config-api.jar"]
