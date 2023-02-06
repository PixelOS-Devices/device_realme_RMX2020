#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme Monet
PRODUCT_MANUFACTURER := realme

# PixelOS Additions
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_CALL_RECORDING_SUPPORTED := false

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_NAME=RMX2020 \
    PRIVATE_BUILD_DESC="RMX2020-user 10 QP1A.190711.020 1652684371 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
