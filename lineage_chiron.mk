#
# Copyright (C) 2022 The CherishOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# EvolutionX Stuff
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GMS := true

# Remove Unwanteded Packages
#PRODUCT_PACKAGES += \
#    RemovePackages

#ifeq ($(WITH_GMS),true)
# Remove Unwanted Gapps
#PRODUCT_PACKAGES += \
#    RemoveGapps
#endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := chiron

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := Xiaomi/chiron/chiron:9/PKQ1.190118.001/V12.0.1.0.PDEMIXM:user/release-keys
BUILD_DESCRIPTION := chiron-user 9 PKQ1.190118.001 V12.0.1.0.PDEMIXM release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
