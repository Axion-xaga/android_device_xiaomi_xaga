#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call soong_config_set,fastbootd,bypass_lock_state,true)

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# ROM Flags
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := false
WITH_GMS := true
# Camera information
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 16

# Maintainer name (underscores become spaces)
AXION_MAINTAINER := Jefino9488

# Processor name (underscores become spaces)
AXION_PROCESSOR := Dimensity_8100
# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

# GPU paths (MediaTek Dimensity 8100)
GPU_FREQS_PATH := /sys/class/devfreq/13000000.mali/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/devfreq/13000000.mali/min_freq

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := xaga
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22041216G
PRODUCT_NAME := lineage_xaga
PRODUCT_SYSTEM_NAME := xaga_global

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/xaga_global/xaga:14/UP1A.231005.007/OS2.0.3.0.ULOMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
