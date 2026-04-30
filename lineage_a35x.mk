#
# Copyright (C) 2026
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from core product
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device configuration
$(call inherit-product, device/samsung/a35x/device.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/samsung/a35x/a35x-vendor.mk)

# Product identity
PRODUCT_DEVICE := a35x
PRODUCT_NAME := lineage_a35x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A356E
PRODUCT_MANUFACTURER := samsung

# Build fingerprint (puedes ajustar luego)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a35x-user 15 AP3A.241105.008 release-keys"

BUILD_FINGERPRINT := samsung/a35x/a35x:15/AP3A.241105.008:user/release-keys

# LineageOS specific flags
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Enable A/B (si aplica, si no, comenta esto)
# AB_OTA_UPDATER := true

# Boot animation (opcional)
TARGET_BOOT_ANIMATION_RES := 1080

# Shipping API level (ajusta si sabes el correcto)
PRODUCT_SHIPPING_API_LEVEL := 34

# Include common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Include extra packages (puedes agregar más luego)
PRODUCT_PACKAGES += \
    adb_root \
    bash \
    curl \
    vim

# Debugging
WITH_DEXPREOPT := false
