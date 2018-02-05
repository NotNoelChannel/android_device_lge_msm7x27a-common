# Kernel informations
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := androidboot.hardware=$(BOARD_VENDOR_PLATFORM) androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x1200000

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27a-common
