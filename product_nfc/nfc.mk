# NFCEE access configuration
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/nfc/nfcee_access_debug.xml:system/etc/nfcee_access.xml

# NFC properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port="I2C"
