# NFCEE access selection
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/lge/msm7x27a-common/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/lge/msm7x27a-common/nfc/nfcee_access_debug.xml
endif

# NFCEE access configuration
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# NFC properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port="I2C"
