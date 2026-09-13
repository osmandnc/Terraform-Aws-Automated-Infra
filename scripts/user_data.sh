#!/bin/bash

apt-get update -y
apt-get install -y docker.io

systemctl start docker
systemctl enable docker

docker run -d --name my-web-app --restart always -p 80:80 \
  nginxdemos/hello
