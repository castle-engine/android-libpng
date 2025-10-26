APP_OPTIM := release

APP_ABI := all
# We could also explicitly declare ABIs like this:
# APP_ABI := armeabi-v7a arm64-v8a

# Minimal for NDK 25.
APP_PLATFORM := android-19

# Support 16k with NDK 25,
# se https://developer.android.com/guide/practices/page-sizes#ndk-build
LOCAL_LDFLAGS += "-Wl,-z,max-page-size=16384"

APP_MODULES := libpng
