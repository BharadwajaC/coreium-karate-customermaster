FROM maven:3.8.3-openjdk-11
RUN apt-get update        
RUN apt-get install -y git
RUN git clone https://github.com/BharadwajaC/coreium-karate-customermaster.git
RUN chmod -R 777 coreium-karate-customermaster
WORKDIR /coreium-karate-customermaster
RUN mvn -v
RUN mvn clean install
