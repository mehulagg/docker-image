From ubuntu:latest

sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates tzdata
sudo apt-get install -y postfix
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
sudo EXTERNAL_URL="https://gitlab.fluttery.ml" apt-get install gitlab-ee
