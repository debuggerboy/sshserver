FROM ubuntu:22.04
COPY files/apt_pref_moz_firefox /etc/apt/preferences.d/mozilla-firefox
COPY files/apt_conf_d_unattnd_upgrd_firefox /etc/apt/apt.conf.d/51unattended-upgrades-firefox
RUN apt update && \
    apt install openssh-server sudo openvpn software-properties-common git vim -y && \
    add-apt-repository ppa:mozillateam/ppa && \
    apt install firefox lxterminal -y
RUN useradd -rm -d /home/anish -s /bin/bash -g root -G sudo -u 1000 anish 
RUN  echo 'anish:test' | chpasswd
RUN service ssh start
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
