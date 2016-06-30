# WiFi permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# WiFi packages
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libnetcmdiface \
    libQWiFiSoftApCfg \
    libwpa_client \
    wcnss_service \
    wpa_supplicant \
    wpa_supplicant.conf
