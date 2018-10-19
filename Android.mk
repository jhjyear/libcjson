LOCAL_PATH := $(call my-dir)

LOCAL_CFLAGS := -DHAVE_CONFIG_H

MY_C_FILES := src/arraylist.c \
	src/json_c_version.c \
	src/json_object_iterator.c \
	src/json_util.c \
	src/linkhash.c \
	src/random_seed.c \
	src/debug.c \
	src/json_object.c \
	src/json_tokener.c \
	src/libjson.c \
	src/printbuf.c

MY_CFLAGS := -DJSON_USE_EXCEPTION=0 \
	-Wno-unused-parameter \
	-Wno-sign-compare \
	-Wno-error \
	-Wno-sign-compare \
	-Wno-conversion 

MY_INCLUDES := $(LOCAL_PATH)/include

include $(CLEAR_VARS)
LOCAL_MODULE := libjsonc
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := $(MY_CFLAGS) 
LOCAL_C_INCLUDES := $(MY_INCLUDES) 
LOCAL_SHARED_LIBRARIES := libc
LOCAL_SRC_FILES := $(MY_C_FILES)
#LOCAL_MODULE_PATH := $(TARGET_OUT)/aa
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libjsonc
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := $(MY_CFLAGS)
LOCAL_C_INCLUDES := $(MY_INCLUDES) 
LOCAL_SRC_FILES := $(MY_C_FILES)
include $(BUILD_STATIC_LIBRARY)

