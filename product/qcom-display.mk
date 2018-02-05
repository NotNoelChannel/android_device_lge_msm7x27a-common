# Display QCOM HAL
$(call project-set-path,qcom-display,device/lge/msm7x27a-common/display)

# Display packages
PRODUCT_PACKAGES += \
    libqdMetaData

# Display QCOM packages
PRODUCT_PACKAGES += \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    memtrack.msm7x27a

# HWComposer is not supported on second generation devices
ifeq ($(LGE_MSM7X27A_GENERATION),1)
PRODUCT_PACKAGES += \
    hwcomposer.msm7x27a
endif

# OpenGL properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version="131072"
