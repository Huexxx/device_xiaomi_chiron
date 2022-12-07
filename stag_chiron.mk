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

# Inherit some common StagOS stuff.
$(call inherit-product, vendor/stag/main.mk)

# Pixel Launcher Mod
ifeq ($(WITH_GAPPS),true)
$(call inherit-product, vendor/PixelLauncher/PixelLauncher.mk)
endif

PIXEL_LAUNCHER_VARIANT := extragrids
ICONS_VARIANT := true

# Google Camera
ifeq ($(WITH_GAPPS),true)
-include vendor/huexxx-prebuilts/packages/apps/GoogleCameraEng/googlecameraeng.mk
endif

# Graphene Camera
-include vendor/huexxx-prebuilts/packages/apps/GrapheneCamera/graphenecamera.mk

# Lawnchair
#-include vendor/huexxx-prebuilts/packages/apps/Lawnchair/lawnchair.mk
#-include vendor/huexxx-prebuilts/packages/apps/Lawnicons/lawnicons.mk

# StagOS Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Remove Unwanted Packages
#PRODUCT_PACKAGES += \
#    RemovePackages

# Remove Unwanted Gapps
ifeq ($(WITH_GAPPS),true)
PRODUCT_PACKAGES += \
    RemoveGapps
endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := stag_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := Xiaomi/chiron/chiron:9/PKQ1.190118.001/V12.0.1.0.PDEMIXM:user/release-keys
BUILD_DESCRIPTION := chiron-user 9 PKQ1.190118.001 V12.0.1.0.PDEMIXM release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
