FROM gitpod/workspace-full-vnc

ENV ANDROID_HOME=/home/gitpod/Android/Sdk \
    FLUTTER_HOME=/home/gitpod/flutter \
    PATH=$FLUTTER_HOME/bin:$ANDROID_HOME/tools:$PATH

USER root

RUN curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && add-apt-repository ppa:git-core/ppa \
    && apt update; apt install -y git \
    && install-packages build-essential libkrb5-dev gcc make gradle android-tools-adb android-tools-fastboot

USER gitpod

RUN cd /home/gitpod \
    && wget -qO flutter_sdk.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.2-stable.tar.xz \
    && tar -xvf flutter_sdk.tar.xz && rm flutter_sdk.tar.xz \
    && wget -qO android_studio.tar.gz https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2020.3.1.22/android-studio-2020.3.1.22-linux.tar.gz \
    && tar -xvf android_studio.tar.gz && rm -f android_studio.tar.gz \
    && wget -O ./skysend.bin https://github.com/redsolver/skysend/releases/download/v3.2/skysend-linux.bin \
    && chmod +x ./skysend.bin \
    && yes | ./skysend.bin d https://skysend.hns.siasky.net/#b-CAC8HwCNenDtgK8Wla-CyILJuKtG0yE4qxrd06DzJBtT8Q+V1IqZBn3Pn/t+OGrSn7TP8nUGnXS/lzMYxdm4N0TdVJlTvwv8ZIyeBxihGwltX2K \
    && unzip Android.zip \
    && rm Android.zip \
