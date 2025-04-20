#!/bin/bash

# SPDX-FileCopyrightText: 2025 Michael Bracht
# SPDX-License-Identifier: MIT

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
ROOT_DIR="$(realpath "$(dirname "$(readlink -f "$0SCRIPT_DIR/../..")")")"

# Prepare environment
export PKCS11_INC=/sources/external/PKCS11-SPECS/v2.20/headers

# Build
make -C ${ROOT_DIR}/external/TrueCrypt NOGUI=1 WX_ROOT=${ROOT_DIR}/external/wxWidgets wxbuild
make -C ${ROOT_DIR}/external/TrueCrypt NOGUI=1 WXSTATIC=1

# Copy binary
mkdir --parent ${ROOT_DIR}/build
mv ${ROOT_DIR}/external/TrueCrypt/Main/truecrypt ${ROOT_DIR}/build/truecrypt_cli

# Clean
make -C ${ROOT_DIR}/external/TrueCrypt clean
rm -rf ${ROOT_DIR}/external/TrueCrypt/wxrelease
rm -f ${ROOT_DIR}/external/TrueCrypt/License.txt.h
rm -f ${ROOT_DIR}/external/TrueCrypt/Common/Language.xml.h
rm -f ${ROOT_DIR}/external/TrueCrypt/Main/SystemPrecompiled.d