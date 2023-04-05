FROM maven:3.9.3-openjdk-17
RUN apt-get update        
RUN apt-get install -y git
RUN git clone https://github.com/BharadwajaC/coreium-karate-customermaster.git
RUN chmod -R 777 coreium-karate-customermaster
WORKDIR /coreium-karate-customermaster
RUN mvn -v
RUN mvn clean test
