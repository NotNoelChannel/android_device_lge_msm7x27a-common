# Init common configurations
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/root/init.lge.shared.rc:root/init.lge.shared.rc \
    device/lge/msm7x27a-common/rootdir/root/init.lge.usb.rc:root/init.lge.usb.rc

# Init device configurations
PRODUCT_COPY_FILES += \
    device/lge/e400/rootdir/root/init.e0.rc:root/init.e0.rc \
    device/lge/e400/rootdir/root/ueventd.e0.rc:root/ueventd.e0.rc
