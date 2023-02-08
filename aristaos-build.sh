#!/bin/bash
# This script will run into container

# source the common variables

. ./env.sh

#

mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}

# Initialize the repo using the local manifest file

echo "We're in ${PWD}"

repo init \
    -m ${YOCTO_DIR}/manifest/manifest.xml

repo sync -j`nproc`

# source the yocto env

EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}

# Build

bitbake ${IMAGES}

