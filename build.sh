#!/bin/bash

# VERSION=${1:-0.0.1}
VERSION=${1}

function usage() {

  echo "usage:"
  echo ""
  echo "$0 <version_number>"
  echo "example:"
  echo "$0 v0.0.1"
  echo ""
}

function build() {
  LOCAL_VERSION=$1
  echo "will build version: ${LOCAL_VERSION}"
  docker build -t stefancocora/alpine-toolbox:${LOCAL_VERSION} .
}

case ${VERSION} in
    0.0.*)
    build ${VERSION}
    shift
    ;;
    v0.0.*)
    build ${VERSION}
    shift
    ;;
    -h)
    usage
    exit 1
    shift
    ;;
    --help)
    usage
    exit 1
    shift
    ;;
    *)
    usage
    exit 1
    shift
    ;;
esac
