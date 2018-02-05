# Prebuilt app: OpenCamera
OPENCAMERA_VERSION := 1.37
ifneq (not_use_prebuilt, $(shell test -d $(TOP)/packages/apps/Camera2 && echo not_use_prebuilt))
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/prebuilt/app/OpenCamera/net.sourceforge.opencamera_$(OPENCAMERA_VERSION).apk:system/app/OpenCamera/OpenCamera.apk
endif

# Script fix to Google Keyboard of GAPPS
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/prebuilt/etc/init.d/99googlelatinimefix:system/etc/init.d/99googlelatinimefix
