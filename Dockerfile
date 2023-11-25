FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# CHANGE ME FOR NEW IMAGE / TAG
LABEL image_name="sfml-ci"
LABEL image_tag="latest"

RUN apt-get update && apt-get install -y \
    cmake \
    git \
    build-essential \
    libxrandr-dev \
    libxcursor-dev \
    libudev-dev \
    libfreetype-dev \
    libopenal-dev \
    libflac-dev \
    libvorbis-dev \
    libgl1-mesa-dev \
    libegl1-mesa-dev \
    && rm -rf /var/lib/apt/lists/*
