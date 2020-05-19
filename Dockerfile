# Install Ansible in a docker container
FROM ubuntu:20.04
MAINTAINER Miguel Angel Muñoz Gonzalez <magonzalez at fortinet.com>

RUN apt update && apt install -y python3-pip
RUN pip3 install wheel ansible==2.9.9
RUN pip3 freeze
RUN ansible --version