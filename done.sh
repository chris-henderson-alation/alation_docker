#!/usr/bin/env bash

# scp a file over to remote
# ascp this.file whatever-wombat.com
# ascp this.file whatever-wombat.com /tmp/
function ascp() {
	scp -o StrictHostKeyChecking=no -o IdentitiesOnly=yes -i /home/chris/.ssh/alation_rsa "$1" ssh-user@$(protocstripper "$2"):"$3"
}

# Log into a box by just doing 
# assh whatever-wombat.com
function assh() {
    ssh -o IdentitiesOnly=yes -i /home/chris/.ssh/alation_rsa ssh-user@$(protocstripper "$1")
}


# for i in "curious-pug.alation-test.com" "rich-osprey.alation-test.com" "hopeful-gobbler.alation-test.com" "frank-badger.alation-test.com" ; do
# 	ascp target/alation_docker.deb "$i"
# done


function dothing() {
  for i in "$@"
do
  echo "###############################################################################################################"
  echo "####################################### $i ####################################################################"
  echo "###############################################################################################################"
#	set +e
#	ssh -o IdentitiesOnly=yes -i /home/chris/.ssh/alation_rsa ssh-user@$(protocstripper "$i") 'sudo bash -s -- uno' <<- EOF
#sudo apt -y remove alation-hydra
#sudo apt -y remove docker.io containerd
#sudo apt -y remove alation-docker
#sudo systemctl unmask docker.service
#sudo systemctl unmask docker.socket
#sudo systemctl unmask containerd.service
#sudo rm -rf alation_docker.deb
#EOF
	ssh -o StrictHostKeyChecking=no -o IdentitiesOnly=yes -i /home/chris/.ssh/alation_rsa ssh-user@$(protocstripper "$i") 'sudo bash -s -- uno' < test.sh | tee "results/${i}"
done
}
arr=(
#  "enjoyed-mantis.alation-test.com"
#  "emerging-ibex.alation-test.com"
#  "real-moccasin.alation-test.com"
  "casual-gnat.alation-test.com"
  "strong-piranha.alation-test.com"
  "relaxed-mouse.alation-test.com"
  "positive-fowl.alation-test.com"
  "noted-pelican.alation-test.com"
  "smashing-snake.alation-test.com"
  "crack-ghost.alation-test.com"
  "fresh-mako.alation-test.com"
  "unbiased-katydid.alation-test.com"
  "adequate-platypus.alation-test.com"
  "tough-adder.alation-test.com"
)

#arr=(
#  "outgoing-grizzly.alation-test.com"
#  "relative-halibut.alation-test.com"
#  "willing-beagle.alation-test.com"
#  "harmless-mollusk.alation-test.com"
#  "striking-pony.alation-test.com"
#)
mkdir results
dothing "${arr[@]}"
