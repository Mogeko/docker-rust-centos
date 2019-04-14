# rust-centos

[![Build Status](https://travis-ci.org/Mogeko/docker-rust-centos.svg?branch=auto-update)](https://travis-ci.org/Mogeko/docker-rust-centos)

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
