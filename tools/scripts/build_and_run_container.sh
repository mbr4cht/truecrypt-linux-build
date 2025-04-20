#!/bin/bash

# SPDX-FileCopyrightText: 2025 Michael Bracht
# SPDX-License-Identifier: MIT

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
ROOT_DIR="$(realpath "$(dirname "$(readlink -f "$0SCRIPT_DIR/../..")")")"

docker build --tag truecrypt-build-image:latest ${ROOT_DIR}/tools/docker

docker run --name truecrypt-build-container -it --volume .:/sources truecrypt-build-image:latest sh -c "/sources/tools/scripts/build_truecrypt_linux_cli.sh"

docker container rm truecrypt-build-container
docker image rm truecrypt-build-image:latest