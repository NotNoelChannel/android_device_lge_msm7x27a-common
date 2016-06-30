# Platform common configuration
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/root/fstab.lge.shared:root/fstab.lge.shared

# Platform device configuration
PRODUCT_COPY_FILES += \
    device/lge/$(LGE_MSM7X27A_DEVICE)/rootdir/root/fstab.$(BOARD_VENDOR_PLATFORM):root/fstab.$(BOARD_VENDOR_PLATFORM) \
    device/lge/$(LGE_MSM7X27A_DEVICE)/rootdir/root/ueventd.$(BOARD_VENDOR_PLATFORM).rc:root/ueventd.$(BOARD_VENDOR_PLATFORM).rc
