FROM openjdk:8

RUN apt-get update && apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libxext-dev libxrender-dev libxtst-dev

ENV JADX_VERSION "1.1.0"

WORKDIR /opt/jadx-${JADX_VERSION}

ADD https://github.com/skylot/jadx/releases/download/v${JADX_VERSION}/jadx-${JADX_VERSION}.zip .

RUN \
  unzip jadx-${JADX_VERSION}.zip && \
  ln -s /opt/jadx-${JADX_VERSION}/bin/jadx /usr/local/bin/jadx && \
  ln -s /opt/jadx-${JADX_VERSION}/bin/jadx-gui /usr/local/bin/jadx-gui

CMD ["jadx"]