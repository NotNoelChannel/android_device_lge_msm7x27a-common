# Media Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Media common configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml

# Media device configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/media_profiles_gen$(LGE_MSM7X27A_GENERATION).xml:system/etc/media_profiles.xml
