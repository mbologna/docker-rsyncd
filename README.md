# rsyncd Dockerfile
[This repository](https://github.com/mbologna/docker-rsyncd/) contains **Dockerfile** of *rsyncd*.

## Base Docker image

* alpine:3.9

## Usage

1. Tweak docker-compose.yml (`HOSTS_ALLOW`)

2. Run rsyncd via [Docker Compose](https://docs.docker.com/compose/install/):

       docker-compose up
