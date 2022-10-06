LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientStreaming \
    AppDirectedSMSService \
    arcore \
    BetterBugStub \
    CaptivePortalLoginGoogle \
    CarrierMetrics \
    CarrierSetup \
    CarrierWifi \
    CbrsNetworkMonitor \
    ConnectivityThermalPowerManager \
    ConnMO \
    ConnMetrics \
    DCMO \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    DMService \
    Drive \
    GCS \
    grilservice \
    GoogleTTS \
    KidsSupervisionStub \
    Maps \
    MlkitBarcodeUIPrebuilt \
    Music \
    MyVerizonServices \
    NetworkPermissionConfigGoogle \
    NetworkStackGoogle \
    NgaResources \
    OBDM_Permissions \
    obdm_stub \
    OdadPrebuilt \
    OemDmTrigger \
    OPScreenRecord \
    Ornament \
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
    SprintDM \
    SprintHM \
    StorageManagerGoogle \
    talkback \
    TetheringEntitlement \
    TurboAdapter \
    TurboPrebuilt \
    Tycho \
    USCCDM \
    Videos \
    VisionBarcodePrebuilt \
    VZWAPNLib \
    VzwOmaTrigger \
    YouTube \
    YouTubeMusicPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
