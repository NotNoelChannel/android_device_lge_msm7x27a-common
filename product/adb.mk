# ADB configurations
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure="false" \
    ro.adb.secure="false"
endif
