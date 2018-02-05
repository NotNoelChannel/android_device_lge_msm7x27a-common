# Media QCOM HAL
$(call project-set-path,qcom-media,device/lge/msm7x27a-common/media)

# OMX packages
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw

# Media properties
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player="true" \
    media.stagefright.enable-meta="false" \
    media.stagefright.enable-scan="true" \
    media.stagefright.enable-http="true" \
    media.stagefright.enable-fma2dp="true" \
    media.stagefright.enable-aac="true" \
    media.stagefright.enable-qcp="true"
