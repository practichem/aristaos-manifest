Run all commands from this directory, typically ~/aristaos-manifest

Sequence:
1. Check out the desired manifest. git switch [branchname]
1. Build the Docker image.
../aristaos-docker/docker-build.sh
1. Create a container from the image and begin the build process.

