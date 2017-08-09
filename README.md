This project was forked from https://github.com/toopher/toopher-docker.

The project generates the docker container 'centos6-i386-toother' and 'centos5-i386-toother'.

In order to build, simply ran either:
$ cd centos6-i386/; ./make-docker-image.sh
$ cd centos7-i386/; ./make-docker-image.sh

The script will run and push the images to artifactory.

Please note that this build depends on vagrant, and as such can't execute on AWS, hence no jenkins job can run this automatically. That said, further note that this project is unlikely to require a change, so the vagrant contraint is not a major issue. 
