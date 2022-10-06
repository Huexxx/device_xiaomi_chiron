LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientStreaming \
    AppDirectedSMSService \
    BetterBugStub \
    CaptivePortalLoginGoogle \
    CarrierMetrics \
    CarrierSetup \
    CarrierWifi \
    CbrsNetworkMonitor \
    ConnectivityThermalPowerManager \
    ConnMO \
    DCMO \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    GCS \
    grilservice \
    GoogleTTS \
    KidsSupervisionStub \
    MlkitBarcodeUIPrebuilt \
    MyVerizonServices \
    NetworkPermissionConfigGoogle \
    NetworkStackGoogle \
    NgaResources \
    Photos \
    PixelDependencies \
    PlayAutoInstallConfig \
    PrebuiltGoogleAdservicesTvp \
    PrebuiltGoogleTelemetryTvp \
    RecorderPrebuilt \
    RilConfigService \
    SCONE \
    ScribePrebuilt \
    SecurityHubPrebuilt \
    Showcase \
    SoundAmplifierPrebuilt \
    StorageManagerGoogle \
    talkback \
    TetheringEntitlement \
    TurboAdapter \
    TurboPrebuilt \
    Tycho \
    VisionBarcodePrebuilt \
    VZWAPNLib \
    VzwOmaTrigger
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
