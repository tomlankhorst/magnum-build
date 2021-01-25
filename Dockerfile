ARG FROM_IMG
FROM $FROM_IMG

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y dpkg-dev debhelper \
  cmake \
  libgl-dev libopenal-dev libglfw3-dev libsdl2-dev \
  libdevil-dev libjpeg-dev libpng-dev libfaad-dev libfreetype6-dev libassimp-dev \
  libbullet-dev libeigen3-dev libglm-dev

COPY packages/ /opt/
COPY cmd.sh /opt/

CMD "/opt/cmd.sh"
