#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a41 device
$(call inherit-product, device/samsung/a41/device.mk)

LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

PRODUCT_DEVICE := a41
PRODUCT_NAME := lineage_a41
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A41
PRODUCT_MANUFACTURER := Samsung

PRODUCT_SYSTEM_NAME := a41xx
PRODUCT_SYSTEM_DEVICE := a41

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="samsung/a41xx/a41:12/SP1A.210812.016/a415FXXU8DXJ1:user/release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := samsung/a41xx/a41:12/SP1A.210812.016/a415FXXU8DXJ1:user/release-keys
