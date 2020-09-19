From ubuntu:latest

USER root

RUN apt-get update
RUN apt-get install -y curl openssh-server ca-certificates tzdata
RUN apt-get install -y postfix
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | bash
RUN EXTERNAL_URL="https://gitlab.fluttery.ml" apt-get install gitlab-ee
