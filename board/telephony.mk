# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_LIBREFERENCE_RIL := true
BOARD_PROVIDES_RILD := true

# Custom class
BOARD_RIL_CLASS += ../../../$(COMMON_DEVICE_PATH)/ril_class

# Legacy RIL flags
TARGET_RIL_VARIANT_LEGACY := true
TARGET_RIL_SUPPORT_SEEK := true