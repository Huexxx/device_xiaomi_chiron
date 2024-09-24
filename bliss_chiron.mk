#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit common Bliss configurations
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080

# Remove Unwanteded Packages
#PRODUCT_PACKAGES += \
#    RemovePackages

#ifeq ($(BLISS_BUILD_VARIANT), gapps)
## Remove Unwanted Gapps
#PRODUCT_PACKAGES += \
#    RemoveGapps
#endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := chiron

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
