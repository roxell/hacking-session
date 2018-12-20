#!/bin/sh

# on request apt setup

. ./testdefs/lava-common

APTOPTS="-q -y install --no-install-recommends -o Dpkg::Options::=--force-confold"
LAVAOPTS="-q -y install --no-install-recommends"

export DEBIAN_FRONTEND=noninteractive
unset LANG
unset LANGUAGE
command 'update-apt' "apt-get update -q"
command 'install-packages' "apt-get ${APTOPTS} $@"
