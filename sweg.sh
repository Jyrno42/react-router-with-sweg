#!/usr/bin/env bash

VERSION=$1
REF="v$VERSION"
REPO=../react-router
CUR_DIR=`pwd`

validate_semver() {
  if ! [[ $1 =~ ^[0-9]\.[0-9]+\.[0-9](-.+)? ]]; then
    echo >&2 "Version $1 is not valid! It must be a valid semver string like 1.0.2 or 2.3.0-beta.1"
    exit 1
  fi
}

validate_semver $VERSION

cd $REPO
git reset --hard
git checkout tags/$REF
git apply $CUR_DIR/sweg-patches/$VERSION.patch

npm install

RELEASE=1 npm test
RELEASE=1 node scripts/build.js
RELEASE=1 npm publish

cd $CUR_DIR
git tag $REF
git tag latest -f
git push origin $REF
git push origin latest -f
