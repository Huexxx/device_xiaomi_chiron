LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
     TurboAdapter
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

#    DevicePolicyPrebuilt \
#    GoogleTTS \
#    Photos \
#    arcore \
#    talkback \
#    CarrierServices \
#    ImsServiceEntitlement \
#    SafetyHubPrebuilt \
#    ScribePrebuilt \
#    TurboPrebuilt \
#    CarrierSetup \
