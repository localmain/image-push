FROM ubuntu
RUN apt-get update -y
RUN apt-get install maven -y
RUN apt-get install openjdk-11-jdk  -y
RUN apt-get install python3 -y
