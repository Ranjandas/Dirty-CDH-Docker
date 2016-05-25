# Dirty-CDH-Docker

## Pre-requisites

- Docker Client and Server
- Docker Compose

## Quick and dirty steps to setup

- clone this repo

- go to the cloned directory `cd Dirty-CDH-Docker`

- build the agent docker image `cd agent && docker build -t agent . && cd ..`

- build the manager docker image `cd manager && docker build -t manager . && cd ..`

- run using docker compose `docker-compose up -d && docker logs -f`
