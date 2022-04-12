FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

ENV ANDROID_HOME=/home/gitpod/Android/Sdk \
    FLUTTER_HOME=/home/gitpod/flutter \
    PATH=$FLUTTER_HOME/bin:$ANDROID_HOME/tools:$PATH

USER root

RUN apt update \
    && apt install -y build-essential libkrb5-dev gcc make gradle android-tools-adb android-tools-fastboot

USER codespace

RUN cd /home/codespace \
    && wget -qO flutter_sdk.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.4-stable.tar.xz \
    && tar -xvf flutter_sdk.tar.xz && rm flutter_sdk.tar.xz 
