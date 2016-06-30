# Media QCOM HAL
$(call project-set-path,qcom-media,device/lge/msm7x27a-common/media)

# Media Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

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
