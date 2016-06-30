# WPA supplicant configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/msm7x27a-common/rootdir/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Hostapd configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/lge/msm7x27a-common/rootdir/system/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/lge/msm7x27a-common/rootdir/system/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Wifi configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
    device/lge/msm7x27a-common/rootdir/system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
    device/lge/msm7x27a-common/rootdir/system/etc/firmware/wlan/volans/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    device/lge/msm7x27a-common/rootdir/system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini

# WiFi properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface="wlan0"
