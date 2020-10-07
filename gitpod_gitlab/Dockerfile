FROM gitpod/workspace-full-vnc

USER root

RUN apt-get update && apt-get install git make

USER gitpod

RUN git clone https://gitlab.com/gitlab-org/gitlab-development-kit.git && \
    cd gitlab-development-kit && \
    make bootstrap && \
    . /home/gitpod/.asdf/asdf.sh && \
    gdk install gitlab_repo=https://gitlab.com/lakshit1/gitlab.git
