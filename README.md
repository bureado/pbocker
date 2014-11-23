pbocker
=======

pbocker allows you to quickly create a pbuilder infrastructure using Docker containers. To get started:

* `sudo apt-get update && sudo apt-get install lxc-docker jq pbuilder`
* `git clone https://github.com/bureado/pbocker.git && cd pbocker`
* `[ -f /var/cache/pbuilder/base.tgz ] && cp /var/cache/pbuilder/base.tgz . || sudo pbuilder --create ; cp /var/cache/pbuilder/base.tgz .`
* `sudo docker build -t pbocker .`
* `sudo ./pbocker-build <absolute path to your DSC>`

Note that deboostrap requires `--privileged=true`, hence we can't have `pbuilder --create` or `--update` in the `Dockerfile`.
