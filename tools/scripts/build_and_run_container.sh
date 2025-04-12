#!/bin/bash

# SPDX-FileCopyrightText: 2025 Michael Bracht
# SPDX-License-Identifier: MIT

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

docker build --file ${SCRIPT_DIR}/../docker/Dockerfile --tag truecrypt-build:latest ${SCRIPT_DIR}

docker run -it -v${SCRIPT_DIR}/../..:/sources truecrypt-build:latest
