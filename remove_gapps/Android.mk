LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    CarrierMetrics \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    GoogleTTS \
    Photos \
    PlayAutoInstallConfig \
    Tycho \
    VZWAPNLib \
    arcore \
    talkback \
    AmbientStreaming \
    AppDirectedSMSService \
    BetterBugStub \
    CarrierLocation \
    CarrierServices \
    CarrierWifi \
    CbrsNetworkMonitor \
    DCMO \
    ConnMO \
    DMService \
    DreamlinerPrebuilt \
    DreamlinerUpdater \
    GCS \
    GoogleCamera \
    KidsSupervisionStub \
    ImsServiceEntitlement \
    MaestroPrebuilt \
    MyVerizonServices \
    OemDmTrigger \
    OdadPrebuilt \
    RecorderPrebuilt \
    SCONE \
    SafetyHubPrebuilt \
    ScribePrebuilt \
    SecurityHubPrebuilt \
    Showcase \
    TetheringEntitlement \
    TurboPrebuilt \
    VzwOmaTrigger \
    WfcActivation \
    DocumentsUIGoogle \
    CarrierSetup \
    ConnectivityThermalPowerManager \
    grilservice \
    RilConfigService \
    TurboAdapter
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
