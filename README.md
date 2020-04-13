# Docker Container for JADX

[JADX](https://github.com/skylot/jadx) is a DEX to Java decompiler by [skylot](https://github.com/skylot). This repository contains `Dockerfile` and instructions to run JADX as a docker container.

## TLDR; Get me started

### Pull the image

```bash
docker pull abh1sek/jadx
```

### Run Cli

Here we will decompile an APK into Java code using JADX as a container

```
docker run --user $(id -u):$(id -g) \
  --rm -it -v `pwd`:/workspace abh1sek/jadx \
  jadx \
  --deobf \
  -d ./output \
  ./input.apk
```

### Run GUI

Here we will start JADX-GUI with current directory mapped inside the container as `/workspace`

```bash
# Allow connections from container
xhost +local:root

docker run --rm -it \
  -v `pwd`:/workspace \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e "DISPLAY=unix${DISPLAY}" \
  abh1sek/jadx \
  jadx-gui 

# Remove connections from container
xhost -local:root
```