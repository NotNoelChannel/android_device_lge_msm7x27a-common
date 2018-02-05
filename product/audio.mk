# Audio configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Audio packages
PRODUCT_PACKAGES += \
    libaudioutils \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    libaudioparameter \
    libaudio-resampler

# Audio properties
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable="1"
