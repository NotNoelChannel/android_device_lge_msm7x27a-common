# Copyright (C) 2013-2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
include vendor/lge/msm7x27a-common/BoardConfigVendor.mk

# Vendor
BOARD_VENDOR := lge

# Compiler flags
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Compiler Optimization
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
USE_CLANG_PLATFORM_BUILD := true

# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27a-common
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x1200000
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := androidboot.hardware=$(LGE_MSM7X27A_PRODUCT) androidboot.selinux=permissive

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# QCOM Display Stuff
BOARD_USES_QCOM_HARDWARE := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_NO_INITLOGO := true
TARGET_NO_ADAPTIVE_PLAYBACK := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Audio
BOARD_USES_LEGACY_ALSA_AUDIO := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Our board specific HALs
USE_DEVICE_SPECIFIC_AUDIO := true
DEVICE_SPECIFIC_AUDIO_PATH := device/lge/msm7x27a-common/audio
USE_DEVICE_SPECIFIC_CAMERA := true
DEVICE_SPECIFIC_CAMERA_PATH := device/lge/msm7x27a-common/camera
USE_DEVICE_SPECIFIC_GPS := true
DEVICE_SPECIFIC_GPS_PATH := device/lge/msm7x27a-common/gps
USE_DEVICE_SPECIFIC_DISPLAY := true
DEVICE_SPECIFIC_DISPLAY_PATH := device/lge/msm7x27a-common/display

# Light
TARGET_PROVIDES_LIBLIGHT := true

# Hardware
BOARD_HARDWARE_CLASS := device/lge/msm7x27a-common/cmhw

# SEPolicy
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/lge/msm7x27a-common/sepolicy

# Recovery FSTAB
TARGET_RECOVERY_FSTAB := device/lge/$(LGE_MSM7X27A_DEVICE)/rootdir/root/fstab.$(LGE_MSM7X27A_PRODUCT)

# BT Include
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/msm7x27a-common/bluetooth

ifeq ($(LGE_MSM7X27A_GENERATION),2)
NEW_INPUT_AUDIO_HAL := true
endif

# WLAN
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/librasdioif.ko"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_EXT_MODULE_NAME             := "librasdioif"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"
WIFI_DRIVER_FW_PATH_PARAM        := "/data/misc/wifi/fwpath"

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Use dlmalloc instead of jemalloc for mallocs on low-ram targets
MALLOC_IMPL := dlmalloc

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(LGE_MSM7X27A_GENERATION),2)
  ifeq ($(HOST_OS),linux)
    ifeq ($(WITH_DEXPREOPT),)
        WITH_DEXPREOPT := true
    endif
  endif
endif

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# BIONIC: use legacy mmap
BOARD_USES_LEGACY_MMAP := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# RIL
BOARD_RIL_CLASS += ../../../device/lge/msm7x27a-common/ril_class
TARGET_RIL_VARIANT := legacy
TARGET_RIL_SUPPORT_SEEK := true

# Only Interpret the system apps due to low space partitions
ifeq ($(LGE_MSM7X27A_GENERATION),1)
  PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := --compiler-filter=interpret-only
  $(call add-product-dex-preopt-module-config,services,--compiler-filter=space)
endif

# Set Device in init based on baseband
TARGET_INIT_VENDOR_LIB := libinit_$(LGE_MSM7X27A_PRODUCT)
TARGET_LIBINIT_DEFINES_FILE := device/lge/vee3/init/init_$(LGE_MSM7X27A_PRODUCT).cpp
