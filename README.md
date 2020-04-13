# Docker Container for JADX

[JADX](https://github.com/skylot/jadx) is a DEX to Java decompiler by [skylot](https://github.com/skylot). This repository contains `Dockerfile` and instructions to run JADX as a docker container.

## TLDR; Get me started

### Run Cli

Here we will decompile an APK into Java code using JADX as a container

```
```

### Run GUI

Here we will start JADX-GUI with current directory mapped inside the container as `/workspace`

```bash
docker run --rm -it \
  -v `pwd`:/workspace \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e "DISPLAY=unix${DISPLAY}" \
  abh1sek/jadx
```