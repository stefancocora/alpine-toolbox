# alpine-toolbox

[![Docker Repository on Quay](https://quay.io/repository/stefancocora/alpine-toolbox/status "Docker Repository on Quay")](https://quay.io/repository/stefancocora/alpine-toolbox)

Alpine based toolbox container that comes preinstalled with various utilities.

This container should be ran in interactive mode most of the time.

To launch it and keep it running on a cluster scheduler ( kubernetes for example ) launch it in a rc or a pod with a sleep of X hours.

See the kubernetes directory for an example rc.


## Build the image
- use the build script setting the build version that you want. It defaults to 0.0.1
```bash
./build.sh v0.0.2
or
./build.sh
```

## Package versions
See the `packages/` directory for a list of the packages and versions included with each release.

Log file generated by this command, ran after the container image has been created:
```bash
docker run --rm  stefancocora/alpine-toolbox:v0.0.1 apk -v info
```

## Test image locally
- interactive
```bash
docker run --rm -ti stefancocora/alpine-toolbox:v0.0.1 bash
```
- non interactive
```bash
docker run -d --name alpine-toolbox stefancocora/alpine-toolbox:v0.0.1
```
