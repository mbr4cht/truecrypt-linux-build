<div align="center">

# TrueCrypt build for Linux

[![REUSE status](https://api.reuse.software/badge/github.com/mbr4cht/truecrypt-linux-build)](https://api.reuse.software/info/github.com/mbr4cht/truecrypt-linux-build)
![Docker](https://img.shields.io/badge/Docker-blue?logo=docker)

This project provides an easy-to-use build environment to build the last available TrueCrypt release v1.7a.

</div>

## Overview

This project integrates all needed sources as git submodules in the [external](external) folder. Where adaptions where needed to make the project compile, they have been done in a minimal way via a fork of the original repository.

For the detailed changes applied to the original source code, please consult the commit history of the used forks:
* [external/TrueCrypt](external/TrueCrypt)
* [external/wxWidgets](external/wxWidgets)

Moreover, this project provides all packages and dependencies needed for a successful build in a well-defined Docker image in [tools/docker](tools/docker).

## How to build

The build can be started via the following scripts:
* Automatically with Docker image: [tools/scripts/build_and_run_container.sh](tools/scripts/build_and_run_container.sh)
* Only the build script: [tools/scripts/build_truecrypt_linux_cli.sh](tools/scripts/build_truecrypt_linux_cli.sh)

## Licensing

Please see our [LICENSE](LICENSE) for copyright and license information.

This project follows the [REUSE](https://reuse.software/) approach, so copyright and licensing information is
available for every file (including third party components) either in the file header, an individual *.license file or a REUSE.toml file. All licenses can be found in the [LICENSES](LICENSES) folder.
