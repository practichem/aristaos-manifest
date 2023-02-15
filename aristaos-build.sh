#!/bin/bash
# This script will run into container

# source the common variables

. ./env.sh

#

mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}

echo -e "\nrepo: Initializing repo"

echo -e "Current directory: ${PWD}\n"

repo init \
    -u ${DOCKER_WORKDIR}/manifest/  \
    -m manifest.xml

repo sync -j`nproc`

# source the yocto env

EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}

# Build

bitbake ${IMAGES}

