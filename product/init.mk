# Init common configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/root/init.lge.shared.rc:root/init.lge.shared.rc \
    device/lge/msm7x27a-common/rootdir/root/init.lge.usb.rc:root/init.lge.usb.rc

# Init device configurations
PRODUCT_COPY_FILES += \
    device/lge/e400/rootdir/init.e0.rc:root/init.e0.rc \

# Script to first generation devices
ifeq ($(LGE_MSM7X27A_GENERATION),1)
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/recovery/root/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh
endif
