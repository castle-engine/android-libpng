libpng for Android for Castle Game Engine
==================

libpng code that can be easily recompiled for Android shared library, and copied to CGE sources.

Builds for all platforms relevant for _Castle Game Engine_:
- 32-bit ARM
- 64-bit ARM (aka Aarch64)
- 32-bit X86
- 64-bit X86 (x86_64)

Use `make build`. This calls `ndk-build` to compile the libraries and copies them to _Castle Game Engine_ tree (assumed in `$CASTLE_ENGINE_PATH`).

Right now, assumes using NDK 25, to have [16 KB ELF alignment](https://developer.android.com/guide/practices/page-sizes#ndk-build).

Consistent with other CGE Android native libs, like https://github.com/castle-engine/android-freetype and https://github.com/castle-engine/android-tremolo .

## Getting ndk-build

It is possible you don't have `ndk-build` installed. When building Android applications with latest _Castle Game Engine_, NDK will not be automatically instaled, as it is just not used by CGE applications build process. `ndk-build` is used to build Android native code from source, but in CGE we use FPC for this purpose. (In the past, CGE still used some NDK tools because they also provided a way to nicely integrate native library into APK. But we don't need them anymore.)

So you likely need to install NDK. Just install the `ndk-bundle` component of Android SDK. On the command-line you can do this by:

```
cd <android-sdk>/cmdline-tools/latest/bin
./sdkmanager ndk-bundle
# and you can add <android-sdk>/ndk-bundle to your $PATH
```

## Original README notes

Notes from https://github.com/julienr/libpng-android , that we base our fork upon:

This is a repackaging of libpng 1.6.29 for Android.

Most changes went in config.h and writing the Makefiles.

The original libpng website is : http://www.libpng.org/pub/png/libpng.html

Assuming 'ndk-build' is in your path, you can use the build.sh script to create a static library.

The 'master' branch of this repository contains upstream version 1.6.29. This
hasn't been tested much on Android.

The 'stable' branch of this repository contains the older 1.4.1 version which works fine on Android.

See the wiki_ for an example Android usage and links to documentation.

You might also be interested in lodepng_

.. _wiki: https://github.com/julienr/libpng-android/wiki
.. _lodepng: https://github.com/lvandeve/lodepng
