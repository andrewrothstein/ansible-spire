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
    dl $ver linux-amd64-glibc
    dl $ver linux-arm64-glibc
}

dlver ${1:-1.7.6}
#dlver 1.8.0
#dlver 1.8.1
#dlver 1.8.2
#dlver 1.8.3
#dlver 1.8.4
#dlver 1.8.5
#dlver 1.8.6
#dlver 1.8.7
#dlver 1.8.8
#dlver 1.8.9
#dlver 1.8.10
#dlver 1.8.11
#dlver 1.9.0
#dlver 1.9.1
#dlver 1.9.2
#dlver 1.9.3
#dlver 1.9.4
#dlver 1.9.5
#dlver 1.9.6
#dlver 1.10.0
#dlver 1.10.1
#dlver 1.10.2
#dlver 1.10.3
#dlver 1.10.4
#dlver 1.11.0
#dlver 1.11.1
#dlver ${1:-1.11.2}
