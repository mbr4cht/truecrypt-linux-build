# SPDX-FileCopyrightText: 2025 Michael Bracht
# SPDX-License-Identifier: MIT

FROM ubuntu:24.04

RUN mkdir /sources
WORKDIR /sources

# Install ocrmypdf and German language pack
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        gcc \
        libfuse-dev \
        pkg-config \
        gtk2.0-dev \
        nasm \
    && rm -rf /var/lib/apt/lists/*


CMD [ "/bin/bash" ]
