#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/felix/aosp_felix.mk)
$(call inherit-product, device/google/gs201/lmodroid_common.mk)
$(call inherit-product, device/google/felix/device-lineage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Fold
PRODUCT_NAME := lmodroid_felix

# Boot animation
TARGET_SCREEN_HEIGHT := 2092
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=felix \
    PRIVATE_BUILD_DESC="felix-user 14 AP2A.240805.005 12025142 release-keys"

BUILD_FINGERPRINT := google/felix/felix:14/AP2A.240805.005/12025142:user/release-keys

$(call inherit-product, vendor/google/felix/felix-vendor.mk)
