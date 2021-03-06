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

LOCAL_CFLAGS := -O2 -DUSE_FILE32API -Wall -Wno-unused-function -Wno-unused-parameter -Wno-unused-variable -Wno-incompatible-pointer-types -Wno-incompatible-pointer-types-discards-qualifiers
#LOCAL_LDFLAGS := -lz -llog
LOCAL_STATIC_LIBRARIES := libz liblog
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
LOCAL_CFLAGS := -O2 -DUSE_FILE32API -Wall -Wno-unused-function -Wno-unused-parameter -Wno-unused-variable -Wno-incompatible-pointer-types -Wno-incompatible-pointer-types-discards-qualifiers
LOCAL_STATIC_LIBRARIES := libz liblog libc++_static
#LOCAL_LDLIBS := -lz -llog
LOCAL_STATIC_LIBRARIES := libz liblog libc++_static libminiunz
LOCAL_FORCE_STATIC_EXECUTABLE := true
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

LOCAL_CFLAGS := -O2 -DUSE_FILE32API -Wall -Wno-unused-function -Wno-unused-parameter -Wno-unused-variable -Wno-incompatible-pointer-types -Wno-incompatible-pointer-types-discards-qualifiers
#LOCAL_LDLIBS := -lz -llog
LOCAL_STATIC_LIBRARIES := libz liblog libc++_static libminiunz
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_LDFLAGS :=  -static
include $(BUILD_EXECUTABLE)

