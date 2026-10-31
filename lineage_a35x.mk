#
# Copyright (C) 2026
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from core product
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device configuration (which also inherits the vendor blobs)
$(call inherit-product, device/samsung/a35x/device.mk)

# Product identity
PRODUCT_DEVICE := a35x
PRODUCT_NAME := lineage_a35x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A356E
PRODUCT_MANUFACTURER := samsung

# GMS client identifier
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# The shipping API is the launch API level of the device, not the Android
# release being compiled.
PRODUCT_SHIPPING_API_LEVEL := 34

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Include common LineageOS configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Optional debugging packages; keep this list limited to packages present
# in the selected source manifest.
PRODUCT_PACKAGES += \
    adb_root \
    bash \
    curl \
    vim

# Disable dexpreopt for early bring-up builds.
WITH_DEXPREOPT := false
