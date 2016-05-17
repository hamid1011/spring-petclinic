FROM hamid1011/tomcat7
MAINTAINER Hamid Raza hamidraza1011@gmail.com
RUN apt-get -qq update

#install maven and git to build project
RUN apt-get install -y wget git-core maven

# Pull project
RUN git clone https://github.com/hamid1011/spring-petclinic.git

# Build project
RUN cd spring-petclinic && mvn package
RUN mv /spring-petclinic/target/petclinic.war /opt/tomcat/webapps/petclinic.war
