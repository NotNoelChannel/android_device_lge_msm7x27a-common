# Audio configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Audio properties
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable="1"
