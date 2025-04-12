#!/bin/bash

# SPDX-FileCopyrightText: 2025 Michael Bracht
# SPDX-License-Identifier: MIT

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

export PKCS11_INC=/sources/external/PKCS11-SPECS/v2.20/headers

cd /sources/external/TrueCrypt

make NOGUI=1 WX_ROOT=/sources/external/wxWidgets wxbuild

cd wxrelease
make install
cd ..

make NOGUI=1 WXSTATIC=1

