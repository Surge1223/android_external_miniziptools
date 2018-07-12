LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libminiunz

LOCAL_SRC_FILES := libminiunz.c ioapi.c

LOCAL_CFLAGS := -O2 -DUSE_FILE32API -Wall
LOCAL_LDLIBS := -lz -llog

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := minunz

LOCAL_SRC_FILES := miniunz.c unzip.c ioapi.c
LOCAL_CFLAGS := -O2 -DUSE_FILE32API -Wall
LOCAL_LDLIBS := -lz -llog
LOCAL_LDFLAGS := -L/opt -static
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := minzip

LOCAL_SRC_FILES := minizip.c zip.c ioapi.c

LOCAL_CFLAGS := -O2 -DUSE_FILE32API -Wall
LOCAL_LDLIBS := -lz -llog
#LOCAL_WHOLE_STATIC_LIBRARIES := libminiunz
LOCAL_LDFLAGS := -L/opt  -static
include $(BUILD_EXECUTABLE)
