LOCAL_PATH:= $(call my-dir)

##### For set the information ##### 
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	forceota.c

LOCAL_CFLAGS += -D__WRITE__
LOCAL_CFLAGS += -D__READ__
LOCAL_MODULE:= forceota_set

LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_UNSTRIPPED)

LOCAL_STATIC_LIBRARIES := libcutils libc

include $(BUILD_EXECUTABLE)

##### For get the information ##### 
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	forceota.c

LOCAL_CFLAGS += -D__READ__
LOCAL_MODULE:= forceota_get

LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_UNSTRIPPED)

LOCAL_STATIC_LIBRARIES := libcutils libc

include $(BUILD_EXECUTABLE)
