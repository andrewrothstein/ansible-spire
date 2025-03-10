#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/spiffe/spire/releases/download

dl()
{
    local ver=$1
    local platform=$2
    local file="spire-${ver}-${platform}_sha256sum.txt"
    local url=$MIRROR/v$ver/$file

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -sSL $url | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux-amd64-musl
    dl $ver linux-arm64-musl
}

dlver ${1:-1.11.2}
