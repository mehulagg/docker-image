FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

ENV ANDROID_HOME=/home/gitpod/Android/Sdk \
    FLUTTER_HOME=/home/gitpod/flutter \
    PATH=$FLUTTER_HOME/bin:$ANDROID_HOME/tools:$PATH

USER root

RUN apt update \
    && apt install -y build-essential libkrb5-dev gcc make gradle android-tools-adb android-tools-fastboot

USER codespace

RUN cd /home/codespace \
    && wget -qO flutter_sdk.tar.xz https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.2.0-stable.tar.xz \
    && tar -xvf flutter_sdk.tar.xz && rm flutter_sdk.tar.xz \
    && wget -qO android_studio.tar.gz https://dl.google.com/dl/android/studio/ide-zips/4.1.2.0/android-studio-ide-201.7042882-linux.tar.gz \
    && tar -xvf android_studio.tar.gz && rm -f android_studio.tar.gz 
