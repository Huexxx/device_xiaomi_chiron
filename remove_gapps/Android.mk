LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AdaptiveVPNPrebuilt-10307 \
    AmbientStreaming \
    BetterBugStub \
    CarrierLocation \
    CarrierMetrics \
    CbrsNetworkMonitor \
    Chrome \
    DevicePolicyPrebuilt \
    GCS \
    KidsSupervisionStub \
    MaestroPrebuilt \
    MlkitBarcodeUIPrebuilt \
    OdadPrebuilt \
    PlayAutoInstallConfig \
    ScribePrebuilt \
    TurboAdapter \
    TurboPrebuilt \
    Tycho \
    VisionBarcodePrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

# PrebuiltGoogleAdservicesTvp \
# PrebuiltGoogleTelemetryTvp \
