# GPS common configurations
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# GPS permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# GPS packages
PRODUCT_PACKAGES += \
    gps.msm7x27a
