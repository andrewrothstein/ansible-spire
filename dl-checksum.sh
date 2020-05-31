#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/spiffe/spire/releases/download

dl()
{
    local ver=$1
    local platform=$2
    local file="spire-${ver}-${platform}_checksums.txt"
    local url=$MIRROR/v$ver/$file

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -sSL $url | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux-x86_64-glibc
}

dlver ${1:-0.10.0}
