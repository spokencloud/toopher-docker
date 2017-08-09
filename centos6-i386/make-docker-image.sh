#!/bin/bash

vagrant up
vagrant ssh -c "cd /vagrant; sudo ./run-in-virtualbox.sh"
vagrant -f destroy

gitbranch=$(git rev-parse --abbrev-ref HEAD)
githash=$(git rev-parse --short HEAD)

sudo docker build . -t spokencloud-spoken-docker.jfrog.io/centos6-i386-toother:"$gitbranch-latest"
sudo docker push spokencloud-spoken-docker.jfrog.io/centos6-i386-toother:"$gitbranch-latest"
sudo docker tag spokencloud-spoken-docker.jfrog.io/centos6-i386-toother:"$gitbranch-latest" spokencloud-spoken-docker.jfrog.io/centos6-i386-toother:"$gitbranch-$githash"
sudo docker push spokencloud-spoken-docker.jfrog.io/centos6-i386-toother:"$gitbranch-$githash"

