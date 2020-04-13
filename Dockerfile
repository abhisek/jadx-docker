FROM openjdk:8

ENV JADX_VERSION "1.1.0"

WORKDIR /opt/jadx-${JADX_VERSION}

ADD https://github.com/skylot/jadx/releases/download/v${JADX_VERSION}/jadx-${JADX_VERSION}.zip .

RUN \
  unzip jadx-${JADX_VERSION}.zip && \
  ln -s /opt/jadx-${JADX_VERSION}/bin/jadx /usr/local/bin/jadx && \
  ln -s /opt/jadx-${JADX_VERSION}/bin/jadx-gui /usr/local/bin/jadx-gui

CMD ["jadx"]