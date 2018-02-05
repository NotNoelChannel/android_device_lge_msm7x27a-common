# RIL QCOM HAL
$(call project-set-path,ril,device/lge/msm7x27a-common/ril)

# Telephony permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# RIL properties
PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types="NV,RUIM" \
    ro.telephony.call_ring.multiple="false" \
    ro.telephony.call_ring="false" \
    ro.telephony.default_network="0" \
    ro.telephony.ril_class="JSRQualcommRIL" \
    ro.telephony.ril.config="qcomdsds,skippinpukcount,simactivation" \
    rild.libpath="/system/lib/libril-qc-qmi-1.so"

# QMI properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware="true"

# Radio properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.ds_fmc_app.mode="0" \
    persist.radio.apm_sim_not_pwdn="1" \
    persist.service.factory.enable="0" \
    ro.use_data_netmgrd="true"
