#
# Copyright (C) 2020-2021 The EvoX Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

PRODUCT_NAME := evolution_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="chiron-user 8.0.0 OPR1.170623.027 V9.5.4.0.ODEMIFA release-keys"
    
BUILD_FINGERPRINT := Xiaomi/chiron/chiron:8.0.0/OPR1.170623.027/V9.5.4.0.ODEMIFA:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
    
# Custom Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_SIZE := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Evolution-X things
EVO_BUILD_TYPE := UNOFFICIAL
EVO_MAINTAINER := Huexxx
