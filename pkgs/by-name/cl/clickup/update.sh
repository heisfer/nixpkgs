#!/usr/bin/env nix-shell
#!nix-shell -i bash -p curl jq php.packages.composer nix-update coreutils

set -eou pipefail


PACKAGE_NAME="clickup"
PACKAGE_VERSION=$(nix eval --raw -f. $PACKAGE_NAME.version)
PACKAGE_DIR="$(dirname "${BASH_SOURCE[0]}")"


UPSTREAM_URL="https://desktop.clickup.com/linux"
UPSTREAM_FILENAME="${}"
