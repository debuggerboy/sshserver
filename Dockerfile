FROM ubuntu:22.04
RUN apt update && \
    apt install openssh-server sudo openvpn software-properties-common git vim -y && \
    add-apt-repository ppa:mozillateam/ppa && \
    echo ' \
Package: * \
Pin: release o=LP-PPA-mozillateam \
Pin-Priority: 1001 \
' | tee /etc/apt/preferences.d/mozilla-firefox && \
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox && \
apt install firefox -y
RUN useradd -rm -d /home/anish -s /bin/bash -g root -G sudo -u 1000 anish 
RUN  echo 'anish:test' | chpasswd
RUN service ssh start
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
