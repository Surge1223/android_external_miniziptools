LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libminiunz
LOCAL_C_INCLUDES := \
    external/zlib \
    external/zlib/src \
    system/core/base/include \
    system/core/include \
    system/core/libziparchive \
    system/core/liblog \
    system/core/libcutils \
    system/core/libcutils/include \
    $(LOCAL_PATH)

LOCAL_SRC_FILES := libminiunz.c ioapi.c
LOCAL_CFLAGS := \
  -DUSE_FILE32API -Wall \
  -std=gnu99 -O2 -fpic -fPIC \
  -pipe -fno-strict-aliasing \
  -D_GNU_SOURCE  \
  -D__BIONIC__ -DANDROID \
  -D__ANDROID__ -DZLIB_CONST

LOCAL_STATIC_LIBRARIES :=  liblog libc libc++_static
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := minunz
LOCAL_C_INCLUDES := \
    external/zlib \
    external/zlib/src \
    system/core/base/include \
    system/core/include \
    system/core/libziparchive \
    system/core/liblog \
    system/core/libcutils \
    system/core/libcutils/include \
    $(LOCAL_PATH)

LOCAL_SRC_FILES := miniunz.c unzip.c ioapi.c
LOCAL_CFLAGS := \
  -DUSE_FILE32API -Wall \
  -std=gnu99 -O2 -fpic -fPIC \
  -pipe -fno-strict-aliasing \
  -D_GNU_SOURCE  \
  -D__BIONIC__ -DANDROID \
  -D__ANDROID__ -DZLIB_CONST

LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libz liblog libminiunz libc libc++_static
LOCAL_LDFLAGS :=  -static
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := minzip
LOCAL_C_INCLUDES := \
    external/zlib \
    external/zlib/src \
    system/core/base/include \
    system/core/include \
    system/core/libziparchive \
    system/core/liblog \
    system/core/libcutils \
    system/core/libcutils/include \
    $(LOCAL_PATH)

LOCAL_SRC_FILES := minizip.c zip.c ioapi.c
LOCAL_CFLAGS := \
  -DUSE_FILE32API -Wall \
  -std=gnu99 -O2 -fpic -fPIC \
  -pipe -fno-strict-aliasing \
  -D_GNU_SOURCE  \
  -D__BIONIC__ -DANDROID \
  -D__ANDROID__ -DZLIB_CONST

LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libz liblog libminiunz libc libc++_static
LOCAL_LDFLAGS :=  -static
include $(BUILD_EXECUTABLE)

