.class public Lorg/webrtc/voiceengine/NativeADMCtl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRIVER_FALLBACK_MASK:I = 0x4

.field public static final DRIVER_NATIVE_MASK:I = 0x2

.field public static final DRIVER_OPENSLES_MASK:I = 0x1

.field private static final FALLBACK_DRIVER_ENABLED_BY_DEFAULT:Z = true

.field public static final FEATURE_EMPTY:I = 0x0

.field public static final FEATURE_HW_AGC:I = 0x1

.field public static final FEATURE_HW_IIR:I = 0x2

.field public static final FEATURE_HW_NS:I = 0x4

.field public static final FEATURE_SW_AEC:I = 0x10

.field public static final FEATURE_SW_AGC:I = 0x8

.field public static final FEATURE_SW_NS:I = 0x20

.field private static final NATIVE_DRIVER_ENABLED_BY_DEFAULT:Z = true

.field private static final OPENSLES_DRIVER_ENABLED_BY_DEFAULT:Z = true

.field public static final TAG:Ljava/lang/String; = null

.field private static final USE_NATIVE_ADM_VENDORS_BLACKLIST:Z = true

.field private static volatile _instance:Lorg/webrtc/voiceengine/NativeADMCtl;

.field private static final vendorsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _admFeaturesAvailable:[I

.field private _admFeaturesRequested:[I

.field private volatile _allowFallbackDriver:Z

.field private volatile _allowNativeDriver:Z

.field private volatile _allowOpenSLESDriver:Z

.field private _hwDeviceMask:I

.field private _initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-class v0, Lorg/webrtc/voiceengine/NativeADMCtl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->_instance:Lorg/webrtc/voiceengine/NativeADMCtl;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    .line 45
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "sony"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "sony ericsson"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "motorola"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "asus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowNativeDriver:Z

    .line 20
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowOpenSLESDriver:Z

    .line 21
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowFallbackDriver:Z

    .line 27
    iput v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_hwDeviceMask:I

    .line 28
    iput-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    .line 29
    iput-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    .line 31
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_initialized:Z

    .line 77
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/webrtc/voiceengine/NativeADMCtl;
    .locals 2

    .prologue
    .line 79
    const-class v1, Lorg/webrtc/voiceengine/NativeADMCtl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->_instance:Lorg/webrtc/voiceengine/NativeADMCtl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/webrtc/voiceengine/NativeADMCtl;

    invoke-direct {v0}, Lorg/webrtc/voiceengine/NativeADMCtl;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->_instance:Lorg/webrtc/voiceengine/NativeADMCtl;

    .line 80
    :cond_0
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->_instance:Lorg/webrtc/voiceengine/NativeADMCtl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize(I)V
    .locals 3
    .parameter

    .prologue
    .line 54
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    and-int/lit8 p1, p1, -0x3

    .line 58
    :cond_0
    iput p1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_hwDeviceMask:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_initialized:Z

    .line 60
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sound_settings_audio_driver"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sound_settings_audio_driver"

    const-string/jumbo v2, "7"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setDeviceMask(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setAvailableFeaturesMask(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 68
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 69
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_1

    .line 71
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 72
    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    iget-object v3, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    .line 75
    :cond_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    aput p2, v1, v0

    .line 76
    return-void
.end method


# virtual methods
.method public allowFallbackDriver()Z
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowFallbackDriver:Z

    invoke-virtual {p0}, Lorg/webrtc/voiceengine/NativeADMCtl;->isFallbackDriverAvailable()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public allowNativeDriver()Z
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowNativeDriver:Z

    invoke-virtual {p0}, Lorg/webrtc/voiceengine/NativeADMCtl;->isNativeDriverAvailable()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public allowOpenSLESDriver()Z
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowOpenSLESDriver:Z

    invoke-virtual {p0}, Lorg/webrtc/voiceengine/NativeADMCtl;->isOpenSLESDriverAvailable()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public getAvailableFeaturesMask(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 136
    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    array-length v2, v2

    if-le v2, v1, :cond_0

    .line 137
    iget-object v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getDeviceMask()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_hwDeviceMask:I

    return v0
.end method

.method public getFeaturesMask(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 156
    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    array-length v2, v2

    if-le v2, v1, :cond_0

    .line 157
    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    array-length v2, v2

    if-gt v2, v1, :cond_4

    .line 158
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 159
    iget-object v3, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    if-eqz v3, :cond_3

    .line 160
    iget-object v3, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    iget-object v4, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    array-length v4, v4

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_3
    iput-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    .line 163
    :cond_4
    iget-object v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    aget v1, v2, v1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUsableDeviceMask()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/NativeADMCtl;->allowNativeDriver()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/NativeADMCtl;->allowOpenSLESDriver()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/webrtc/voiceengine/NativeADMCtl;->allowFallbackDriver()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public isFallbackDriverAvailable()Z
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x4

    iget v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_hwDeviceMask:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_initialized:Z

    return v0
.end method

.method public isNativeDriverAvailable()Z
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x2

    iget v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_hwDeviceMask:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenSLESDriverAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 104
    iget v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_hwDeviceMask:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeviceMask(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMCtl;->vendorsBlacklist:Ljava/util/List;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    and-int/lit8 p1, p1, -0x3

    .line 128
    :cond_0
    const/4 v0, 0x2

    and-int/lit8 v3, p1, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setNativeDriver(Z)V

    .line 129
    and-int/lit8 v0, p1, 0x1

    if-ne v1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setOpenSLESDriver(Z)V

    .line 130
    const/4 v0, 0x4

    and-int/lit8 v3, p1, 0x4

    if-ne v0, v3, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFallbackDriver(Z)V

    .line 131
    return-void

    :cond_1
    move v0, v2

    .line 128
    goto :goto_0

    :cond_2
    move v0, v2

    .line 129
    goto :goto_1

    :cond_3
    move v1, v2

    .line 130
    goto :goto_2
.end method

.method public setFallbackDriver(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowFallbackDriver:Z

    .line 99
    return-void
.end method

.method public setFeaturesMask(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_0
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 143
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesAvailable:[I

    array-length v1, v1

    if-gt v1, v0, :cond_1

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMCtl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unavailable device index requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    array-length v1, v1

    if-gt v1, v0, :cond_4

    .line 145
    :cond_2
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 146
    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    iget-object v3, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    :cond_3
    iput-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    .line 150
    :cond_4
    iget-object v1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_admFeaturesRequested:[I

    aput p2, v1, v0

    goto :goto_0
.end method

.method public setNativeDriver(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowNativeDriver:Z

    .line 93
    return-void
.end method

.method public setOpenSLESDriver(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/NativeADMCtl;->_allowOpenSLESDriver:Z

    .line 96
    return-void
.end method
