# rust-centos

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/mogeko/rust-centos.svg?label=Docker&maxAge=600)](https://hub.docker.com/r/mogeko/rust-centos)

A Docker image that runs Rust in a CentOS environment

## Usage

Copy and paste to pull this image

```
docker pull mogeko/rust-centos
```

Usage in `.travis.yml`

```
server:
  - docker

before_install:
  - docker pull mogeko/rust-centos

...
```
