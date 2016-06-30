# ART properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap="false"

# ART properties for first generation
ifeq ($(LGE_MSM7X27A_GENERATION),1)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter="balanced" \
    dalvik.vm.image-dex2oat-filter="speed"
endif
