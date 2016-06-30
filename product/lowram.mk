# Low-ram configurations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram="true" \
    persist.sys.force_highendgfx="true" \
    config.disable_atlas="true" \
    ro.sys.fw.bg_apps_limit="8"
