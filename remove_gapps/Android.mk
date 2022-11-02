LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    DreamlinerPrebuilt \
    DreamlinerUpdater \
    GoogleCamera \
    SCONE \
    AmbientStreaming \
    OemDmTrigger \
    Tycho \
    VZWAPNLib \
    grilservice \
    ConnectivityThermalPowerManager \
    MyVerizonServices \
    RilConfigService \
    PlayAutoInstallConfig
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
