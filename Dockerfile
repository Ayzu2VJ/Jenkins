FROM ubuntu
RUN apt-get update && apt-get install openjdk-8-jdk -y
ADD https://get.jenkins.io/war-stable/2.303.1/jenkins.war jenkins.war
EXPOSE 8080
CMD ["java","-jar","jenkins.war"]
