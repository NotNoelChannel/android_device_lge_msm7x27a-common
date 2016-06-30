# Media common configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml

# Media device configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/media_profiles_gen$(LGE_MSM7X27A_GENERATION).xml:system/etc/media_profiles.xml
