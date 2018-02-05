# Camera permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

# Camera packages
PRODUCT_PACKAGES += \
    camera.msm7x27a

# Camera properties
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api="1"
