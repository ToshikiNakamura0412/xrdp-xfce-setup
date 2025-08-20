FROM ubuntu:20.04

ARG USERNAME=user
ENV DEBIAN_FRONTEND=noninteractive

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && \
  apt-get install -y sudo && \
  useradd -m -s /bin/bash ${USERNAME} && \
  echo "${USERNAME}:${USERNAME}" | chpasswd && \
  usermod -aG sudo ${USERNAME} && \
  echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ${USERNAME}
WORKDIR /home/${USERNAME}

COPY setup-xrdp.sh ./
COPY start-xrdp.sh ./
COPY clean-xrdp.sh ./

RUN ./setup-xrdp.sh

RUN sudo apt-get clean && \
  sudo rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "./start-xrdp.sh" ]
