LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Support 16k with NDK 25,
# se https://developer.android.com/guide/practices/page-sizes#ndk-build
LOCAL_LDFLAGS += "-Wl,-z,max-page-size=16384"

LOCAL_CFLAGS :=

LOCAL_MODULE    := libpng
LOCAL_SRC_FILES :=\
	png.c \
	pngerror.c \
	pngget.c \
	pngmem.c \
	pngpread.c \
	pngread.c \
	pngrio.c \
	pngrtran.c \
	pngrutil.c \
	pngset.c \
	pngtest.c \
	pngtrans.c \
	pngwio.c \
	pngwrite.c \
	pngwtran.c \
	pngwutil.c \
	arm/arm_init.c \
	arm/filter_neon.S \
	arm/filter_neon_intrinsics.c

# Android includes libz already.
# https://developer.android.com/ndk/guides/stable_apis.html#zlib
LOCAL_LDLIBS := -lz

#LOCAL_SHARED_LIBRARIES := -lz
#LOCAL_EXPORT_LDLIBS := -lz
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)
