#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_chiron
TARGET_RECOVERY_DEVICE_MODULES := libinit_chiron

# Build broken
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true

# Path
DEVICE_PATH := device/xiaomi/chiron

# Architecture
TARGET_CPU_VARIANT_RUNTIME := cortex-a73
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73
TARGET_USES_64_BIT_BINDER := true

# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
  endif
endif

# Kernel
KERNEL_SUPPORTS_LLVM_TOOLS := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := chiron_defconfig
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOTIMG_HEADER_VERSION := 2

BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery

TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC_EXT=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc

# Assert
TARGET_OTA_ASSERT_DEVICE := chiron

# Audio
AUDIO_FEATURE_ELLIPTIC_ULTRASOUND_SUPPORT := true

# Recovery
TARGET_RECOVERY_UI_MARGIN_STATUSBAR := 50

# Display
TARGET_SCREEN_DENSITY := 400

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(PLATFORM_PATH)/sepolicy/public

# Vendor Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Inherit from proprietary files
include vendor/xiaomi/chiron/BoardConfigVendor.mk
