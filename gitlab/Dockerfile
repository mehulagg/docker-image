From ubuntu:latest

RUN sudo apt-get update
RUN sudo apt-get install -y curl openssh-server ca-certificates tzdata
RUN sudo apt-get install -y postfix
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
RUN sudo EXTERNAL_URL="https://gitlab.fluttery.ml" apt-get install gitlab-ee
