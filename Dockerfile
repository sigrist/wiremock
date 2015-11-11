FROM java:8
MAINTAINER Paulo Sigrist <paulo.sigrist@gmail.com>

# Create the base folders
RUN mkdir -p /data
RUN mkdir -p /opt/wiremock

# Download the wiremock standalone into /opt/wiremock folder
ADD https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock/1.57/wiremock-1.57-standalone.jar /opt/wiremock/

# Set /data as workdir
WORKDIR /data

# Start the wiremock
ENTRYPOINT ["java", "-jar", "/opt/wiremock/wiremock-1.57-standalone.jar"]
