LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AdaptiveVPNPrebuilt \
    AmbientStreaming \
    AppDirectedSMSService \
    BetterBugStub \
    CarrierLocation \
    CarrierMetrics \
    CarrierServices \
    CarrierSetup \
    CarrierWifi \
    CbrsNetworkMonitor \
    Chrome \
    ConnectivityThermalPowerManager \
    ConnMO \
    DCMO \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    DMService \
    DreamlinerPrebuilt \
    DreamlinerUpdater \
    GCS \
    GoogleCamera \
    grilservice \
    ImsServiceEntitlement \
    KidsSupervisionStub \
    MaestroPrebuilt \
    MlkitBarcodeUIPrebuilt \
    MyVerizonServices \
    OdadPrebuilt \
    PixelDependencies \
    PlayAutoInstallConfig \
    RilConfigService \
    SafetyHubPrebuilt \
    SCONE \
    ScribePrebuilt \
    Showcase \
    TetheringEntitlement \
    TurboAdapter \
    TurboPrebuilt \
    Tycho \
    Videos \
    VisionBarcodePrebuilt \
    VZWAPNLib \
    VzwOmaTrigger
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
