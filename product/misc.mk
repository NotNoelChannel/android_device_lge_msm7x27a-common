# Misc permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# ART properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap="false"

# ART properties for first generation
ifeq ($(LGE_MSM7X27A_GENERATION),1)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter="balanced" \
    dalvik.vm.image-dex2oat-filter="speed"
endif

# Low-ram configurations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram="true" \
    persist.sys.force_highendgfx="true" \
    config.disable_atlas="true" \
    ro.sys.fw.bg_apps_limit="8"

# SDCard configurations
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.fuse_sdcard="true"
