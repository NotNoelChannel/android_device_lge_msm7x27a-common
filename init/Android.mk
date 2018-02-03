LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_SRC_FILES := init_$(LGE_MSM7X27A_PRODUCT).cpp
LOCAL_MODULE := libinit_$(LGE_MSM7X27A_PRODUCT)
include $(BUILD_STATIC_LIBRARY)
