LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps_Full
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientStreaming \
    CaptivePortalLoginGoogle \
    ConnectivityThermalPowerManager \
    grilservice \
    MyVerizonServices \
    NetworkPermissionConfigGoogle \
    NetworkStackGoogle \
    PixelDependencies \
    PrebuiltGoogleAdservicesTvp \
    PrebuiltGoogleTelemetryTvp \
    RilConfigService \
    SCONE \
    SecurityHubPrebuilt \
    TurboAdapter \
    TurboPrebuilt \
    Tycho \
    VZWAPNLib \
    Photos \
    GoogleTTS \
    RecorderPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

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
    KidsSupervisionStub \
    MlkitBarcodeUIPrebuilt \
    MyVerizonServices \
    NetworkPermissionConfigGoogle \
    NetworkStackGoogle \
    NgaResources \
    PixelDependencies \
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

include $(CLEAR_VARS)
LOCAL_MODULE := RemoveGapps_Core
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientStreaming \
    AndroidAutoStubPrebuilt \
    AppDirectedSMSService \
    arcore \
    BetterBugStub \
    CaptivePortalLoginGoogle \
    CarrierLocation \
    CarrierMetrics \
    CarrierSetup \
    CarrierWifi \
    CbrsNetworkMonitor \
    Chrome \
    Chrome-Stub \
    ConnectivityThermalPowerManager \
    ConnMO \
    DCMO \
    DeviceIntelligenceNetworkPrebuilt \
    DevicePersonalizationPrebuiltPixel2020 \
    DevicePolicyPrebuilt \
    DiagnosticsToolPrebuilt \
    DMService \
    EmergencyInfoGoogleNoUi \
    Flipendo \
    GCS \
    GoogleContacts \
    GoogleFeedback \
    GooglePrintRecommendationService \
    GoogleTTS \
    grilservice \
    ImsServiceEntitlement \
    KidsSupervisionStub \
    LatinIMEGooglePrebuilt \
    LocationHistoryPrebuilt \
    MaestroPrebuilt \
    MarkupGoogle \
    MlkitBarcodeUIPrebuilt \
    MyVerizonServices \
    NetworkPermissionConfigGoogle \
    NetworkStackGoogle \
    NexusLauncherRelease \
    NgaResources \
    OdadPrebuilt \
    Photos \
    PixelDependencies \
    PixelThemesStub \
    PixelWallpapers2021 \
    PlayAutoInstallConfig \
    PrebuiltBugle \
    PrebuiltBugle \
    PrebuiltGmsCoreSc_AdsDynamite \
    PrebuiltGmsCoreSc_CronetDynamite \
    PrebuiltGmsCoreSc_DynamiteLoader \
    PrebuiltGmsCoreSc_DynamiteModulesA \
    PrebuiltGmsCoreSc_DynamiteModulesC \
    PrebuiltGmsCoreSc_GoogleCertificates \
    PrebuiltGmsCoreSc_MapsDynamite \
    PrebuiltGmsCoreSc_MeasurementDynamite \
    PrebuiltGoogleAdservicesTvp \
    PrebuiltGoogleTelemetryTvp \
    QuickAccessWallet \
    RecorderPrebuilt \
    RilConfigService \
    SafetyHubPrebuilt \
    SCONE \
    ScribePrebuilt \
    SecurityHubPrebuilt \
    SettingsIntelligenceGooglePrebuilt \
    Showcase \
    SoundAmplifierPrebuilt \
    StorageManagerGoogle \
    TagGoogle \
    talkback \
    TetheringEntitlement \
    TrichromeLibrary \
    TrichromeLibrary-Stub \
    TurboAdapter \
    TurboPrebuilt \
    Tycho \
    Velvet \
    VisionBarcodePrebuilt \
    VZWAPNLib \
    VzwOmaTrigger \
    WallpaperPickerGoogleRelease \
    WebViewGoogle \
    WebViewGoogle-Stub \
    WellbeingPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
