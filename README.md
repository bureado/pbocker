pbocker
=======

pbocker allows you to quickly create a pbuilder infrastructure using Docker containers. To get started:

  1. sudo apt-get update && sudo apt-get install lxc-docker jq pbuilder
  2. git clone https://github.com/bureado/pbocker.git && cd pbocker
  3. [ -f /var/cache/pbuilder/result/base.tgz ] && cp /var/cache/pbuilder/result/base.tgz . || sudo pbuilder --create ; cp /var/cache/pbuilder/result/base.tgz .
  4. sudo docker build -t pbocker .
  5. sudo ./pbocker-build <absolute path to your DSC>

Note that deboostrap requires --privileged=true, hence we can't have pbuilder --create or --update in the Dockerfile.
