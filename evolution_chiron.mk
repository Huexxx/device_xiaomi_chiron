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

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Google Camera
-include vendor/huexxx-prebuilts/packages/apps/GoogleCamera/googlecamera.mk

# Graphene Camera
-include vendor/huexxx-prebuilts/packages/apps/GrapheneCamera/graphenecamera.mk

# Lawnchair
#-include vendor/huexxx-prebuilts/packages/apps/Lawnchair/lawnchair.mk
#-include vendor/huexxx-prebuilts/packages/apps/Lawnicons/lawnicons.mk

# Evolution X Stuff
TARGET_BOOT_ANIMATION_RES := 1080

# Remove Unwanteded Packages
PRODUCT_PACKAGES += \
    RemovePackages

# Remove Unwanted Gapps
PRODUCT_PACKAGES += \
    RemoveGapps

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys
BUILD_DESCRIPTION := raven-user 13 TP1A.221005.002 9012097 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
