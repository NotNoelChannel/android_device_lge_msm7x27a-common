# Compiler flags
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Compiler Optimization
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true

# Target
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_NO_ADAPTIVE_PLAYBACK := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
  endif
endif

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# BIONIC: use legacy mmap
BOARD_USES_LEGACY_MMAP := true

PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := --compiler-filter=interpret-only
$(call add-product-dex-preopt-module-config,services,--compiler-filter=space)