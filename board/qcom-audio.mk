# Audio configurations
USE_DEVICE_SPECIFIC_AUDIO := true
DEVICE_SPECIFIC_AUDIO_PATH := $(COMMON_DEVICE_PATH)/audio
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Use updated input HAL on second generation devices
ifeq ($(LGE_MSM7X27A_GENERATION),2)
  NEW_INPUT_AUDIO_HAL := true
endif
