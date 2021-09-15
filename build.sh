#!/bin/sh
set -eu

ndk-build NDK_PROJECT_PATH=./ $@
