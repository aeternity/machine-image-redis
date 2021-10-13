# Machine-image-redis

# Overview
This repository contains Ansible roles that are used to setup redis in our AWS infrastructure.

# Ansible role testing
## Setup
1) In the main directory run `make env` to setup ansible required version dependencies
2) In the main directory load the python virtual environment `source venv/bin/activate` 
4) To test and the systemd tasks , you need docker image, which support systemd runs: 
   cd test && docker build -t centos/test-systemd .
4) To build the AMI: packer build redis.json
5) If you build from infrastructure image , than you don't need ansible venv.It has the correct version installed.
