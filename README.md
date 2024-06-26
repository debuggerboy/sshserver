# SSHSERVER

A very basic SSH server using ubuntu latest image

## Supported Tags

### Ubuntu 22.04 LTS Builds

- `0.0.1` - only openssh-server and single user
- `0.0.2` - openssh-server, openvpn and firefox with single user

### Ubuntu 24.04 LTS Builds

- `ubu2404_0.0.1` - openssh-server, openvpn, firefox with single user

## Source

source: `https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i`

```
https://github.com/debuggerboy/sshserver/
```

### Build Status

[![Build Containerimage](https://github.com/debuggerboy/sshserver/actions/workflows/build-containerimage.yml/badge.svg?branch=main)](https://github.com/debuggerboy/sshserver/actions/workflows/build-containerimage.yml)

[![Build Ubuntu 24.04 LTS Containerimage](https://github.com/debuggerboy/sshserver/actions/workflows/build_ubu2404_container_image.yml/badge.svg)](https://github.com/debuggerboy/sshserver/actions/workflows/build_ubu2404_container_image.yml)

#### References:

- https://damienaicheh.github.io/github/actions/2022/01/20/set-dynamic-parameters-github-workflows-en.html
- https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04
- https://leimao.github.io/blog/Docker-Container-GUI-Display/
- https://nickjanetakis.com/blog/running-docker-containers-as-a-non-root-user-with-a-custom-uid-and-gid
