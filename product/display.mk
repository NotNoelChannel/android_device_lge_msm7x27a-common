# Legacy packages
PRODUCT_PACKAGES += \
    libstlport

# Display properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type="dyn" \
    debug.gralloc.map_fb_memory="1" \
    debug.hwc.fakevsync="1" \
    debug.sf.hw="1" \
    persist.hwc.mdpcomp.enable="false"
