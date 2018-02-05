LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_SRC_FILES := init_$(BOARD_VENDOR_PLATFORM).cpp
LOCAL_MODULE := libinit_$(BOARD_VENDOR_PLATFORM)
include $(BUILD_STATIC_LIBRARY)
