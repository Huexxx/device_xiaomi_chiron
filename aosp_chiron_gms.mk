#
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit some common Project Arcana stuff.
$(call inherit-product, vendor/aosp/common.mk)
$(call inherit-product, vendor/aosp/config/themes.mk)

# Repainter integration
PRODUCT_PACKAGES += \
    RepainterServicePriv

# Google Camera
-include vendor/huexxx-prebuilts/packages/apps/GoogleCamera/googlecamera.mk

# Remove Unwanted Gapps
PRODUCT_PACKAGES += \
    RemoveGapps

ARCANA_MAINTAINER := Huexxx
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_DEVICE := chiron
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_SUPPORTS_BLUR := false
USE_PIXEL_CHARGER_IMAGES := true
WITH_GAPPS := true

PRODUCT_NAME := aosp_chiron_gms
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys
BUILD_DESCRIPTION := raven-user 12 SP2A.220405.004 8233519 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
