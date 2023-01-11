#
# Copyright (C) 2023 The SuperiorOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

#ifneq ($(SUPERIOR_GAPPS),)
# Pixel Launcher Mod
#$(call inherit-product, vendor/PixelLauncher/PixelLauncher.mk)
#endif

#PIXEL_LAUNCHER_VARIANT := extragrids
#ICONS_VARIANT := true

#ifneq ($(SUPERIOR_GAPPS),)
# Google Camera
#-include vendor/huexxx-prebuilts/packages/apps/GoogleCameraEng/googlecameraeng.mk
#endif

# Graphene Camera
#-include vendor/huexxx-prebuilts/packages/apps/GrapheneCamera/graphenecamera.mk

# Lawnchair
#-include vendor/huexxx-prebuilts/packages/apps/Lawnchair/lawnchair.mk
#-include vendor/huexxx-prebuilts/packages/apps/Lawnicons/lawnicons.mk

# SuperiorOS Stuff with GApps
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Remove Unwanteded Packages
#PRODUCT_PACKAGES += \
#    RemovePackages

ifneq ($(SUPERIOR_GAPPS),)
# Remove Unwanted Gapps
PRODUCT_PACKAGES += \
    RemoveGapps
endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_chiron
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
