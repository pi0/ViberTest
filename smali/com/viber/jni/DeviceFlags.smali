.class public Lcom/viber/jni/DeviceFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DF_USE_16000_SAMPLE_RATE:I = 0x1

.field public static final DF_USE_AGC:I = 0x8

.field public static final DF_USE_EC:I = 0x4

.field public static final DF_USE_HI_VOLUME:I = 0x10

.field public static final DF_USE_MIC_BOOST:I = 0x20

.field public static final DF_USE_NS:I = 0x2

.field public static final DF_USE_VIDEO:I = 0x40

.field private static SONY_STANDARD_FLAGS:I

.field private static STANDARD_FLAGS:I

.field public static _AECmode:I

.field public static _AGCmode:I

.field public static _NSmode:I

.field public static _RxAGCmode:I

.field public static _RxNSmode:I

.field private static mFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/jni/DeviceFlags$DeviceModes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0xe

    sput v0, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    .line 68
    sget v0, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    .line 102
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->populateMap()V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getFlagsForDeviceModel()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 359
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 360
    sget v1, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    .line 361
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    :try_start_0
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/DeviceFlags$DeviceModes;

    iget v0, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->deviceFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 366
    :try_start_1
    sget v0, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found, using default flags..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :goto_0
    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->isVideoSupportBuiltin()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x40

    :goto_1
    or-int/2addr v0, v1

    .line 380
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "webrtc_ec_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    and-int/lit8 v0, v0, -0x5

    .line 385
    :cond_0
    return v0

    .line 370
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found, using flags : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not found, using default flags..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 378
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 372
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2
.end method

.method public static getSpeechEnhancementsModeForDeviceModel()Lcom/viber/jni/DeviceFlags$DeviceModes;
    .locals 5

    .prologue
    .line 390
    new-instance v1, Lcom/viber/jni/DeviceFlags$DeviceModes;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    .line 391
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/DeviceFlags$DeviceModes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Speech Enhancements for Device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " found, using AEC mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " AGC mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " NS mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Speech Enhancements for Device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found, using RxAGC mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " RxNS mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 397
    iget v1, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    sput v1, Lcom/viber/jni/DeviceFlags;->_AECmode:I

    .line 398
    iget v1, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    sput v1, Lcom/viber/jni/DeviceFlags;->_AGCmode:I

    .line 399
    iget v1, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    sput v1, Lcom/viber/jni/DeviceFlags;->_NSmode:I

    .line 400
    iget v1, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    sput v1, Lcom/viber/jni/DeviceFlags;->_RxAGCmode:I

    .line 401
    iget v1, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    sput v1, Lcom/viber/jni/DeviceFlags;->_RxNSmode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    :goto_0
    return-object v0

    .line 402
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 403
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Speech Enhancements for Device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " NOT found, using default Speech Enhancements Modes..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 402
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static populateMap()V
    .locals 15

    .prologue
    const/4 v4, 0x3

    const/4 v14, 0x2

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "E10a"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "E10i"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "E16i"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "E16a"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "X10i"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "X10a"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "U20i"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "U20a"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "E15i"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "E15a"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "legend"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    or-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "thunderg"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    or-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "U8150"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v7, Lcom/viber/jni/DeviceFlags;->STANDARD_FLAGS:I

    or-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-I5500"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "S5570I"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GIONEE"

    new-instance v5, Lcom/viber/jni/DeviceFlags$DeviceModes;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(I)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v7, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v8, "runnymede"

    new-instance v0, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "ja3g"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "vision"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "DiabloHD"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v4

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "hwG510-0010"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "buzz"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "vee3e"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "hammerhead"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "vee7ds"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "LT26i"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "Pixo_GSM"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v4

    move v9, v2

    move v10, v2

    move v11, v4

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-I9000"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v4

    move v9, v2

    move v10, v1

    move v11, v4

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "g2"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "ace"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "hwY300-0000"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "X10i"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    sget v13, Lcom/viber/jni/DeviceFlags;->SONY_STANDARD_FLAGS:I

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v4

    move v12, v2

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-S5570"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "saga"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "Scribe5HD"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v7, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v8, "bravo"

    new-instance v0, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v3, v1

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "hwY300-0151"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "evita"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "vivo"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-I5510"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "pyramid"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "mintss"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "mako"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v4

    move v9, v4

    move v10, v14

    move v11, v4

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "hwu8825D"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v4

    move v9, v2

    move v10, v1

    move v11, v4

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "chacha"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-I9100"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-N7000"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v4

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "blade"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "Martell_lite_GSM"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v4

    move v9, v2

    move v10, v2

    move v11, v4

    move v12, v1

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "maguro"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "umts_spyder"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "A68"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "LT18a"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "marvel"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "t03g"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "u8800"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v1

    move v11, v4

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "m7"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-S5300"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "GT-S5830"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v7, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v8, "GT-S5360"

    new-instance v0, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "Martell_GSM"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "kyleopen"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "hsdroid"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "m0"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v3, "ST25i"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v1, "jflte"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v1, "golden"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v2

    move v9, v4

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v1, "geeb"

    new-instance v7, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v8, v14

    move v9, v2

    move v10, v2

    move v11, v14

    move v12, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v7, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v8, "smi"

    new-instance v0, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v1, v4

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v7, Lcom/viber/jni/DeviceFlags;->mFlagMap:Ljava/util/Map;

    const-string/jumbo v8, "bird77_a_cu_ics2"

    new-instance v0, Lcom/viber/jni/DeviceFlags$DeviceModes;

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method
