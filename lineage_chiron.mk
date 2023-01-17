#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chiron device
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit some common RiceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#ifneq ($(WITH_GMS),)
# Google Camera
#-include vendor/huexxx-prebuilts/packages/apps/GoogleCameraEng/googlecameraeng.mk
#endif

# Graphene Camera
#-include vendor/huexxx-prebuilts/packages/apps/GrapheneCamera/graphenecamera.mk

# Acons and DGicons
-include vendor/huexxx-prebuilts/packages/apps/Acons/acons.mk
-include vendor/huexxx-prebuilts/packages/apps/DGicons/dgicons.mk

# RiceDroid Stuff
RICE_MAINTAINER := Huexxx
SUSHI_BOOTANIMATION := 1080
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Remove Unwanteded Packages
#PRODUCT_PACKAGES += \
#    RemovePackages

#ifneq ($(WITH_GMS),)
# Remove Unwanted Gapps
#PRODUCT_PACKAGES += \
#    RemoveGapps
#endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_chiron
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
