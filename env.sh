

# All paths are relative to the parent directory.

# repo name for AristaOS manifest
MANIFEST_REPO="aristaos-manifest"


DOCKER_REPO="aristaos-docker"


# The build files will go in the ARISTAOS_REPO, under the version tag subdirectory.
ARISTAOS_REPO="aristaos"


# Suggest DOCKER_WORKDIR exist and be owned by the current user.
# This should be accomplished within the Dockerfile.
DOCKER_WORKDIR="/opt/yocto"

# Add a tag to the Docker image. Used by docker-run.sh
DOCKER_IMAGE_TAG="ubuntu-18.04"

# Specify the Dockerfile required by Yocto for this project
DOCKERFILE_NAME="dockerfile-zeus"

BUILD_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"


IMX_RELEASE="aristaos-2.3"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

# Assign Yocto specific environment variables
MACHINE="cgtqmx6"
DISTRO="fsl-imx-xwayland"
IMAGES="imx-image-core"

# Manifest environment variables
REMOTE="https://source.codeaurora.org/external/imx/imx-manifest"
BRANCH="imx-linux-hardknott"