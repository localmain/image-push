FROM centos:centos7
RUN yum install maven -y
RUN yum install python3 -y
RUN yum install java-11-openjdk-devel -y
RUN yum update all -y
