# Syncplay Server Docker

This is a docker container for running a [Syncplay](https://github.com/Syncplay/syncplay) server.

## Running with Docker

This container can be built with the following command:

```sh
docker build -t syncplay-server .
```

It can be run with the following command:

```sh
docker run -d -p 8999:8999 --name syncplay-server syncplay-server
```
