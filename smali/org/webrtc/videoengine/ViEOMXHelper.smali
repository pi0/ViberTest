.class public Lorg/webrtc/videoengine/ViEOMXHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_WHITELISTED_MODELS_ONLY:Z = false

.field public static final EXTERNAL_QUIRK_LISTS_LOCATIONS:[Ljava/lang/String; = null

.field public static final FORCE_DETAILED_CHECKS:Z = false

.field private static final OPENH264_SONAME:Ljava/lang/String; = "libopenh264-1.0.0-android19.so"

.field private static final OPENH264_SONAME_LOCATION:Ljava/lang/String; = null

.field public static final REJECT_BLACKLISTED_MODELS:Z = true

.field public static final TAG:Ljava/lang/String; = null

.field public static final VP8ProfileMain:I = 0x1

.field private static _h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static _h264_minimal_api_level:I

.field private static _vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

.field static blacklistedModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;",
            ">;"
        }
    .end annotation
.end field

.field static cachedCodecInfo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final h264_codecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final openh264DownloadPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final vp8_colorspaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static whitelistedModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 30
    const-class v0, Lorg/webrtc/videoengine/ViEOMXHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->TAG:Ljava/lang/String;

    .line 34
    const/16 v0, 0x12

    sput v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_minimal_api_level:I

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->blacklistedModels:Ljava/util/Map;

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "/sdcard/viber/h264_quirks.json"

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->EXTERNAL_QUIRK_LISTS_LOCATIONS:[Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    .line 253
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->vp8_colorspaces:Ljava/util/Set;

    .line 378
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->cachedCodecInfo:Ljava/util/Set;

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->OPENH264_SONAME_LOCATION:Ljava/lang/String;

    .line 704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->openh264DownloadPaths:Ljava/util/Map;

    .line 716
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->openh264DownloadPaths:Ljava/util/Map;

    const-string/jumbo v1, "armeabi-v7a"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;

    const-string/jumbo v3, "http://ciscobinary.openh264.org/download/libopenh264-1.0.0-android19.so.bz2"

    const-string/jumbo v4, "3bac885bba6b97afcbac5ed383bec918"

    invoke-direct {v2, v3, v4}, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->openh264DownloadPaths:Ljava/util/Map;

    const-string/jumbo v1, "armeabi-v7a-hard"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;

    const-string/jumbo v3, "http://ciscobinary.openh264.org/download/libopenh264-1.0.0-android19.so.bz2"

    const-string/jumbo v4, "3bac885bba6b97afcbac5ed383bec918"

    invoke-direct {v2, v3, v4}, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x15

    const/16 v6, 0x13

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "manta"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    invoke-direct {v2, v6}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "nakasi"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    invoke-direct {v2, v6, v6}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "jflte"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    invoke-direct {v2, v6}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "t03gxx"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    const-string/jumbo v3, "OMX.SEC.AVC.Encoder"

    const-string/jumbo v4, "OMX.SEC.AVC.Decoder"

    invoke-direct {v2, v6, v6, v3, v4}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "lt26i_1257-7450"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    const v3, 0x7fa30c03

    const-string/jumbo v4, "OMX.qcom.video.encoder.avc"

    const-string/jumbo v5, "OMX.qcom.video.decoder.avc"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "m0xx"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    const-string/jumbo v3, "OMX.SEC.AVC.Encoder"

    const-string/jumbo v4, "OMX.SEC.AVC.Encoder"

    invoke-direct {v2, v6, v6, v3, v4}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    const-string/jumbo v1, "hammerhead"

    new-instance v2, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    const-string/jumbo v3, "OMX.qcom.video.encoder.avc"

    const-string/jumbo v4, "OMX.qcom.video.decoder.avc"

    invoke-direct {v2, v7, v6, v3, v4}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->EXTERNAL_QUIRK_LISTS_LOCATIONS:[Ljava/lang/String;

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->loadExternalQuirkLists([Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method static synthetic access$000(Landroid/util/JsonReader;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->readIntFromJson(Landroid/util/JsonReader;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final colorFormat(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 267
    sparse-switch p0, :sswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 268
    :sswitch_0
    const-string/jumbo v0, "COLOR_FormatMonochrome"

    goto :goto_0

    .line 269
    :sswitch_1
    const-string/jumbo v0, "COLOR_Format8bitRGB332"

    goto :goto_0

    .line 270
    :sswitch_2
    const-string/jumbo v0, "COLOR_Format12bitRGB444"

    goto :goto_0

    .line 271
    :sswitch_3
    const-string/jumbo v0, "COLOR_Format16bitARGB4444"

    goto :goto_0

    .line 272
    :sswitch_4
    const-string/jumbo v0, "COLOR_Format16bitARGB1555"

    goto :goto_0

    .line 273
    :sswitch_5
    const-string/jumbo v0, "COLOR_Format16bitRGB565"

    goto :goto_0

    .line 274
    :sswitch_6
    const-string/jumbo v0, "COLOR_Format16bitBGR565"

    goto :goto_0

    .line 275
    :sswitch_7
    const-string/jumbo v0, "COLOR_Format18bitRGB666"

    goto :goto_0

    .line 276
    :sswitch_8
    const-string/jumbo v0, "COLOR_Format18bitARGB1665"

    goto :goto_0

    .line 277
    :sswitch_9
    const-string/jumbo v0, "COLOR_Format19bitARGB1666"

    goto :goto_0

    .line 278
    :sswitch_a
    const-string/jumbo v0, "COLOR_Format24bitRGB888"

    goto :goto_0

    .line 279
    :sswitch_b
    const-string/jumbo v0, "COLOR_Format24bitBGR888"

    goto :goto_0

    .line 280
    :sswitch_c
    const-string/jumbo v0, "COLOR_Format24bitARGB1887"

    goto :goto_0

    .line 281
    :sswitch_d
    const-string/jumbo v0, "COLOR_Format25bitARGB1888"

    goto :goto_0

    .line 282
    :sswitch_e
    const-string/jumbo v0, "COLOR_Format32bitBGRA8888"

    goto :goto_0

    .line 283
    :sswitch_f
    const-string/jumbo v0, "COLOR_Format32bitARGB8888"

    goto :goto_0

    .line 284
    :sswitch_10
    const-string/jumbo v0, "COLOR_FormatYUV411Planar"

    goto :goto_0

    .line 285
    :sswitch_11
    const-string/jumbo v0, "COLOR_FormatYUV411PackedPlanar"

    goto :goto_0

    .line 286
    :sswitch_12
    const-string/jumbo v0, "COLOR_FormatYUV420Planar"

    goto :goto_0

    .line 287
    :sswitch_13
    const-string/jumbo v0, "COLOR_FormatYUV420PackedPlanar"

    goto :goto_0

    .line 288
    :sswitch_14
    const-string/jumbo v0, "COLOR_FormatYUV420SemiPlanar"

    goto :goto_0

    .line 289
    :sswitch_15
    const-string/jumbo v0, "COLOR_FormatYUV422Planar"

    goto :goto_0

    .line 290
    :sswitch_16
    const-string/jumbo v0, "COLOR_FormatYUV422PackedPlanar"

    goto :goto_0

    .line 291
    :sswitch_17
    const-string/jumbo v0, "COLOR_FormatYUV422SemiPlanar"

    goto :goto_0

    .line 292
    :sswitch_18
    const-string/jumbo v0, "COLOR_FormatYCbYCr"

    goto :goto_0

    .line 293
    :sswitch_19
    const-string/jumbo v0, "COLOR_FormatYCrYCb"

    goto :goto_0

    .line 294
    :sswitch_1a
    const-string/jumbo v0, "COLOR_FormatCbYCrY"

    goto :goto_0

    .line 295
    :sswitch_1b
    const-string/jumbo v0, "COLOR_FormatCrYCbY"

    goto :goto_0

    .line 296
    :sswitch_1c
    const-string/jumbo v0, "COLOR_FormatYUV444Interleaved"

    goto :goto_0

    .line 297
    :sswitch_1d
    const-string/jumbo v0, "COLOR_FormatRawBayer8bit"

    goto :goto_0

    .line 298
    :sswitch_1e
    const-string/jumbo v0, "COLOR_FormatRawBayer10bit"

    goto :goto_0

    .line 299
    :sswitch_1f
    const-string/jumbo v0, "COLOR_FormatRawBayer8bitcompressed"

    goto :goto_0

    .line 300
    :sswitch_20
    const-string/jumbo v0, "COLOR_FormatL2"

    goto/16 :goto_0

    .line 301
    :sswitch_21
    const-string/jumbo v0, "COLOR_FormatL4"

    goto/16 :goto_0

    .line 302
    :sswitch_22
    const-string/jumbo v0, "COLOR_FormatL8"

    goto/16 :goto_0

    .line 303
    :sswitch_23
    const-string/jumbo v0, "COLOR_FormatL16"

    goto/16 :goto_0

    .line 304
    :sswitch_24
    const-string/jumbo v0, "COLOR_FormatL24"

    goto/16 :goto_0

    .line 305
    :sswitch_25
    const-string/jumbo v0, "COLOR_FormatL32"

    goto/16 :goto_0

    .line 306
    :sswitch_26
    const-string/jumbo v0, "COLOR_FormatYUV420PackedSemiPlanar"

    goto/16 :goto_0

    .line 307
    :sswitch_27
    const-string/jumbo v0, "COLOR_FormatYUV422PackedSemiPlanar"

    goto/16 :goto_0

    .line 308
    :sswitch_28
    const-string/jumbo v0, "COLOR_Format18BitBGR666"

    goto/16 :goto_0

    .line 309
    :sswitch_29
    const-string/jumbo v0, "COLOR_Format24BitARGB6666"

    goto/16 :goto_0

    .line 310
    :sswitch_2a
    const-string/jumbo v0, "COLOR_Format24BitABGR6666"

    goto/16 :goto_0

    .line 311
    :sswitch_2b
    const-string/jumbo v0, "COLOR_TI_FormatYUV420PackedSemiPlanar"

    goto/16 :goto_0

    .line 312
    :sswitch_2c
    const-string/jumbo v0, "COLOR_FormatSurface"

    goto/16 :goto_0

    .line 313
    :sswitch_2d
    const-string/jumbo v0, "COLOR_QCOM_FormatYUV420SemiPlanar"

    goto/16 :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x7f000100 -> :sswitch_2b
        0x7f000789 -> :sswitch_2c
        0x7fa30c00 -> :sswitch_2d
    .end sparse-switch
.end method

.method public static final getAVCLevel(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 332
    sparse-switch p0, :sswitch_data_0

    .line 350
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 333
    :sswitch_0
    const-string/jumbo v0, "AVCLevel1"

    goto :goto_0

    .line 334
    :sswitch_1
    const-string/jumbo v0, "AVCLevel1b"

    goto :goto_0

    .line 335
    :sswitch_2
    const-string/jumbo v0, "AVCLevel11"

    goto :goto_0

    .line 336
    :sswitch_3
    const-string/jumbo v0, "AVCLevel12"

    goto :goto_0

    .line 337
    :sswitch_4
    const-string/jumbo v0, "AVCLevel13"

    goto :goto_0

    .line 338
    :sswitch_5
    const-string/jumbo v0, "AVCLevel2"

    goto :goto_0

    .line 339
    :sswitch_6
    const-string/jumbo v0, "AVCLevel21"

    goto :goto_0

    .line 340
    :sswitch_7
    const-string/jumbo v0, "AVCLevel22"

    goto :goto_0

    .line 341
    :sswitch_8
    const-string/jumbo v0, "AVCLevel3"

    goto :goto_0

    .line 342
    :sswitch_9
    const-string/jumbo v0, "AVCLeve31"

    goto :goto_0

    .line 343
    :sswitch_a
    const-string/jumbo v0, "AVCLeve32"

    goto :goto_0

    .line 344
    :sswitch_b
    const-string/jumbo v0, "AVCLevel4"

    goto :goto_0

    .line 345
    :sswitch_c
    const-string/jumbo v0, "AVCLevel41"

    goto :goto_0

    .line 346
    :sswitch_d
    const-string/jumbo v0, "AVCLevel42"

    goto :goto_0

    .line 347
    :sswitch_e
    const-string/jumbo v0, "AVCLevel5"

    goto :goto_0

    .line 348
    :sswitch_f
    const-string/jumbo v0, "AVCLevel51"

    goto :goto_0

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
    .end sparse-switch
.end method

.method public static final getAVCProfile(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 319
    sparse-switch p0, :sswitch_data_0

    .line 328
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 320
    :sswitch_0
    const-string/jumbo v0, "AVCProfileBaseline"

    goto :goto_0

    .line 321
    :sswitch_1
    const-string/jumbo v0, "AVCProfileMain"

    goto :goto_0

    .line 322
    :sswitch_2
    const-string/jumbo v0, "AVCProfileExtended"

    goto :goto_0

    .line 323
    :sswitch_3
    const-string/jumbo v0, "AVCProfileHigh"

    goto :goto_0

    .line 324
    :sswitch_4
    const-string/jumbo v0, "AVCProfileHigh10"

    goto :goto_0

    .line 325
    :sswitch_5
    const-string/jumbo v0, "AVCProfileHigh422"

    goto :goto_0

    .line 326
    :sswitch_6
    const-string/jumbo v0, "AVCProfileHigh444"

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getDecoderNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 547
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->getDecoders(Ljava/lang/String;)[Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 548
    new-instance v1, Lorg/webrtc/videoengine/ViEOMXHelper$2;

    invoke-direct {v1}, Lorg/webrtc/videoengine/ViEOMXHelper$2;-><init>()V

    invoke-static {v0, v1}, Lcom/viber/voip/util/u;->a(Ljava/util/Collection;Lcom/viber/voip/util/v;)Ljava/util/List;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getDecoders(Ljava/lang/String;)[Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;
    .locals 4
    .parameter

    .prologue
    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    iget-boolean v1, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->isEncoder:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    iget-object v1, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->mimetype:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    return-object v0
.end method

.method public static getEncoderNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 536
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->getEncoders(Ljava/lang/String;)[Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 537
    new-instance v1, Lorg/webrtc/videoengine/ViEOMXHelper$1;

    invoke-direct {v1}, Lorg/webrtc/videoengine/ViEOMXHelper$1;-><init>()V

    invoke-static {v0, v1}, Lcom/viber/voip/util/u;->a(Ljava/util/Collection;Lcom/viber/voip/util/v;)Ljava/util/List;

    move-result-object v0

    .line 543
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getEncoders(Ljava/lang/String;)[Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;
    .locals 4
    .parameter

    .prologue
    .line 518
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 519
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    iget-boolean v1, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->isEncoder:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    iget-object v1, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->mimetype:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    return-object v0
.end method

.method public static getNode(Ljava/lang/String;)Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;
    .locals 1
    .parameter

    .prologue
    .line 514
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    return-object v0
.end method

.method public static getOpenH264DownloadUrl()Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;
    .locals 2

    .prologue
    .line 721
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->openh264DownloadPaths:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;

    return-object v0
.end method

.method private static final getOpenH264Path()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->OPENH264_SONAME_LOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "libopenh264-1.0.0-android19.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getQuirks()Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;
    .locals 2

    .prologue
    .line 568
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    return-object v0
.end method

.method public static final getVP8Level(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 361
    packed-switch p0, :pswitch_data_0

    .line 367
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 362
    :pswitch_1
    const-string/jumbo v0, "VP8Level_Version0"

    goto :goto_0

    .line 363
    :pswitch_2
    const-string/jumbo v0, "VP8Level_Version1"

    goto :goto_0

    .line 364
    :pswitch_3
    const-string/jumbo v0, "VP8Level_Version2"

    goto :goto_0

    .line 365
    :pswitch_4
    const-string/jumbo v0, "VP8Level_Version3"

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static final getVP8Profile(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 354
    packed-switch p0, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 355
    :pswitch_0
    const-string/jumbo v0, "VP8ProfileMain"

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static h264Colorspaces(Ljava/lang/String;)[I
    .locals 1
    .parameter

    .prologue
    .line 558
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    .line 559
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 560
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->supportedColorspaces()[I

    move-result-object v0

    goto :goto_0
.end method

.method public static final h264MinimalApiLevel()I
    .locals 1

    .prologue
    .line 564
    sget v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_minimal_api_level:I

    return v0
.end method

.method private static isCodecPresent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 387
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER_AND_DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-static {p0, p1, v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->isCodecPresent(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z

    move-result v0

    return v0
.end method

.method private static isCodecPresent(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z
    .locals 21
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;",
            ">;",
            "Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 391
    const/4 v3, 0x0

    .line 392
    const/4 v2, 0x0

    .line 393
    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper;->cachedCodecInfo:Ljava/util/Set;

    if-nez v4, :cond_1

    .line 394
    const-class v5, Lorg/webrtc/videoengine/ViEOMXHelper;

    monitor-enter v5

    .line 395
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lorg/webrtc/videoengine/ViEOMXHelper;->cachedCodecInfo:Ljava/util/Set;

    .line 396
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v6

    .line 397
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    .line 398
    sget-object v7, Lorg/webrtc/videoengine/ViEOMXHelper;->cachedCodecInfo:Ljava/util/Set;

    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 400
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_1
    const/4 v9, 0x0

    .line 403
    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper;->cachedCodecInfo:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    move v3, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodecInfo;

    .line 404
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    .line 405
    const-string/jumbo v6, "colorspaces:{"

    .line 406
    array-length v12, v11

    const/4 v5, 0x0

    move v7, v5

    move-object v5, v6

    :goto_2
    if-ge v7, v12, :cond_e

    aget-object v13, v11, v7

    .line 408
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    const/4 v3, 0x1

    :goto_3
    or-int v6, v4, v3

    .line 409
    :try_start_2
    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER_AND_DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_4

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_4

    :cond_3
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_8

    :cond_4
    const/4 v4, 0x1

    :goto_4
    and-int/2addr v4, v3

    .line 410
    if-eqz v4, :cond_12

    .line 411
    :try_start_3
    invoke-virtual {v2, v13}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v14

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "MIME:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    iget-object v15, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v3, 0x0

    move v8, v3

    :goto_5
    move/from16 v0, v16

    if-ge v8, v0, :cond_9

    aget v17, v15, v8

    .line 414
    invoke-static/range {v17 .. v17}, Lorg/webrtc/videoengine/ViEOMXHelper;->colorFormat(I)Ljava/lang/String;

    move-result-object v3

    .line 415
    if-nez v3, :cond_5

    const-string/jumbo v3, "unknown"

    .line 416
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v18, ") "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    .line 418
    if-nez v3, :cond_6

    new-instance v3, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v13, v0, v1}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 419
    :cond_6
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->addSupportedColorspace(I)V

    .line 420
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 413
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_5

    .line 400
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 408
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 409
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 422
    :cond_9
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "] "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v3

    .line 423
    :try_start_6
    const-string/jumbo v5, "video/avc"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " H264:["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v5

    .line 425
    :try_start_7
    iget-object v8, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v14, v8

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v14, :cond_a

    aget-object v15, v8, v3

    .line 426
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "profile:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/webrtc/videoengine/ViEOMXHelper;->getAVCProfile(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",level:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v15, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v15}, Lorg/webrtc/videoengine/ViEOMXHelper;->getAVCLevel(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "; "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 428
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "] "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v3

    :cond_b
    :goto_7
    move v5, v6

    .line 406
    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-object/from16 v20, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, v20

    goto/16 :goto_2

    .line 429
    :cond_c
    :try_start_8
    const-string/jumbo v5, "video/avc"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " VP8:["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v5

    .line 431
    :try_start_9
    iget-object v8, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v14, v8

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v14, :cond_d

    aget-object v15, v8, v3

    .line 432
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "profile:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/webrtc/videoengine/ViEOMXHelper;->getVP8Profile(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",level:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v15, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v15}, Lorg/webrtc/videoengine/ViEOMXHelper;->getVP8Level(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "; "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 434
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "] "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v3

    goto/16 :goto_7

    .line 437
    :catch_0
    move-exception v3

    move-object v3, v5

    move v5, v6

    .line 439
    :goto_a
    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "codec \'"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, "\' has failed on retrieving data"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(ZLjava/lang/String;)V

    goto/16 :goto_8

    .line 442
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 443
    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_f

    const-string/jumbo v5, "++"

    :goto_b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "encoder"

    :goto_c
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "] "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": supported types ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(ZLjava/lang/String;)V

    .line 444
    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "            "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 443
    :cond_f
    const-string/jumbo v5, "**"

    goto :goto_b

    :cond_10
    const-string/jumbo v5, "decoder"

    goto :goto_c

    .line 446
    :cond_11
    return v4

    .line 437
    :catch_1
    move-exception v5

    move v5, v6

    goto/16 :goto_a

    :catch_2
    move-exception v6

    move-object/from16 v20, v5

    move v5, v4

    move v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_a

    :catch_3
    move-exception v4

    move v4, v3

    move-object v3, v5

    move v5, v6

    goto/16 :goto_a

    :cond_12
    move-object v3, v5

    goto/16 :goto_7
.end method

.method public static isH264Available()Z
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 451
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v11, v0, :cond_2

    .line 452
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    move v2, v0

    .line 510
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v3

    .line 452
    goto :goto_0

    .line 453
    :cond_2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 457
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->blacklistedModels:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    or-int v4, v3, v0

    .line 458
    if-eqz v4, :cond_5

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") H264 codec availability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_4

    const-string/jumbo v0, "blacklisted"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v2, v3

    goto :goto_1

    .line 507
    :cond_4
    const-string/jumbo v0, "available"

    goto :goto_2

    .line 473
    :cond_5
    :try_start_1
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 474
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    .line 475
    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    iget-object v6, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    .line 476
    if-nez v1, :cond_6

    .line 477
    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    iget-object v6, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    .line 479
    :cond_6
    if-eqz v1, :cond_8

    .line 480
    iget-boolean v6, v1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->isEncoder:Z

    if-eqz v6, :cond_7

    iget v0, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    :goto_3
    invoke-virtual {v1, v0}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->addSupportedColorspace(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") H264 codec availability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "available"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_1

    .line 480
    :cond_7
    :try_start_2
    iget v0, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    goto :goto_3

    .line 482
    :cond_8
    iget-object v1, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 483
    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    iget-object v6, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    new-instance v7, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    const-string/jumbo v8, "video/avc"

    iget-object v9, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget v1, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    if-eq v11, v1, :cond_9

    .line 485
    iget v1, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    invoke-virtual {v7, v1}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->addSupportedColorspace(I)V

    .line 490
    :goto_5
    iget-object v1, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 491
    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    iget-object v6, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    new-instance v7, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    const-string/jumbo v8, "video/avc"

    iget-object v9, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget v1, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    if-eq v11, v1, :cond_b

    .line 493
    iget v0, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->decoder:I

    invoke-virtual {v7, v0}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->addSupportedColorspace(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 507
    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ") H264 codec availability: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_10

    const-string/jumbo v0, "blacklisted"

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_11

    :goto_8
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw v1

    .line 487
    :cond_9
    :try_start_3
    iget-object v1, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedEncoderType:Ljava/lang/String;

    sget-object v6, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    sget-object v7, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-static {v1, v6, v7}, Lorg/webrtc/videoengine/ViEOMXHelper;->isCodecPresent(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z

    move-result v1

    and-int/2addr v4, v1

    goto :goto_5

    .line 489
    :cond_a
    const-string/jumbo v1, "video/avc"

    sget-object v6, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    sget-object v7, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->ENCODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-static {v1, v6, v7}, Lorg/webrtc/videoengine/ViEOMXHelper;->isCodecPresent(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z

    move-result v1

    and-int/2addr v4, v1

    goto :goto_5

    .line 495
    :cond_b
    iget-object v0, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->forcedDecoderType:Ljava/lang/String;

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    sget-object v6, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-static {v0, v1, v6}, Lorg/webrtc/videoengine/ViEOMXHelper;->isCodecPresent(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z

    move-result v0

    and-int/2addr v0, v4

    goto/16 :goto_4

    .line 497
    :cond_c
    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    sget-object v6, Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;->DECODER:Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;

    invoke-static {v0, v1, v6}, Lorg/webrtc/videoengine/ViEOMXHelper;->isCodecPresent(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z

    move-result v0

    and-int/2addr v0, v4

    goto/16 :goto_4

    .line 503
    :cond_d
    if-nez v4, :cond_12

    .line 504
    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->h264_codecs:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/ViEOMXHelper;->isCodecPresent(Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    and-int/2addr v0, v4

    .line 507
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") H264 codec availability: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_e

    const-string/jumbo v1, "blacklisted"

    :goto_a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 508
    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_available:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_f

    move v1, v3

    :goto_b
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 510
    if-eqz v0, :cond_0

    move v2, v3

    goto/16 :goto_1

    .line 507
    :cond_e
    const-string/jumbo v1, "available"

    goto :goto_a

    :cond_f
    move v1, v2

    .line 508
    goto :goto_b

    .line 507
    :cond_10
    const-string/jumbo v0, "available"

    goto/16 :goto_7

    :cond_11
    move v3, v2

    .line 508
    goto/16 :goto_8

    .line 507
    :catchall_1
    move-exception v0

    move-object v1, v0

    move v4, v3

    goto/16 :goto_6

    :cond_12
    move v0, v4

    goto :goto_9
.end method

.method public static isVP8Available()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    const/4 v0, -0x1

    sget-object v3, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 573
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 604
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 573
    goto :goto_0

    .line 574
    :cond_2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 578
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->blacklistedModels:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int v3, v2, v0

    .line 579
    if-eqz v3, :cond_5

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ") vp8 codec availability: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_4

    const-string/jumbo v0, "blacklisted"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 602
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v1, v2

    goto :goto_1

    .line 601
    :cond_4
    const-string/jumbo v0, "available"

    goto :goto_2

    .line 590
    :cond_5
    :try_start_1
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 591
    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper;->vp8_colorspaces:Ljava/util/Set;

    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;

    iget v0, v0, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->encoder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") vp8 codec availability: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v0, "available"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 602
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_1

    .line 597
    :cond_6
    if-nez v3, :cond_7

    .line 601
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ") vp8 codec availability: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_8

    const-string/jumbo v0, "blacklisted"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 602
    sget-object v4, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 604
    if-eqz v3, :cond_0

    move v1, v2

    goto/16 :goto_1

    .line 601
    :cond_8
    const-string/jumbo v0, "available"

    goto :goto_3

    :cond_9
    move v0, v1

    .line 602
    goto :goto_4

    .line 601
    :catchall_0
    move-exception v0

    move-object v3, v0

    move v4, v2

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ") vp8 codec availability: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_a

    const-string/jumbo v0, "blacklisted"

    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 602
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_vp8_available:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_b

    :goto_7
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw v3

    .line 601
    :cond_a
    const-string/jumbo v0, "available"

    goto :goto_6

    :cond_b
    move v2, v1

    .line 602
    goto :goto_7

    .line 601
    :catchall_1
    move-exception v0

    move v4, v3

    move-object v3, v0

    goto :goto_5
.end method

.method private static final loadExternalQuirkLists([Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    .line 647
    if-nez p0, :cond_1

    .line 698
    :cond_0
    return-void

    .line 648
    :cond_1
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 649
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 651
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QUIRKS-ex: found "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " source"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 653
    :try_start_0
    new-instance v4, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 654
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 655
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 656
    :goto_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 658
    if-nez v0, :cond_4

    .line 694
    :cond_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    goto :goto_1

    .line 695
    :catch_0
    move-exception v0

    goto :goto_1

    .line 659
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 660
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "blacklist"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 661
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QUIRKS-ex: found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " section"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 662
    const-string/jumbo v0, "blacklist"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->blacklistedModels:Ljava/util/Map;

    move-object v1, v0

    .line 663
    :goto_3
    const-string/jumbo v0, "blacklist"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    .line 664
    :goto_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 665
    :goto_5
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    .line 667
    :try_start_1
    invoke-static {v4, v1, v0}, Lorg/webrtc/videoengine/ViEOMXHelper$OMXQuirks;->fromJSON(Landroid/util/JsonReader;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QUIRKS-ex:  new entity successfully added to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 672
    :catch_1
    move-exception v0

    .line 673
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QUIRKS-ex: got exception from entity, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    .line 677
    :cond_6
    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_2

    .line 662
    :cond_7
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->whitelistedModels:Ljava/util/Map;

    move-object v1, v0

    goto :goto_3

    .line 663
    :cond_8
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->blacklistedModels:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 670
    :cond_9
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QUIRKS-ex:  new entity was dropped for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 678
    :cond_a
    :try_start_4
    const-string/jumbo v0, "minimal_api_level"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 679
    const-string/jumbo v0, "STRING"

    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 680
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 681
    const/16 v0, 0xa

    .line 682
    const-string/jumbo v5, "0x"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 683
    const-string/jumbo v0, "0x"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    const/16 v0, 0x10

    .line 686
    :cond_b
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_minimal_api_level:I

    .line 690
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QUIRKS-ex: minimal API level overridden by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_minimal_api_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 688
    :cond_c
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    sput v0, Lorg/webrtc/videoengine/ViEOMXHelper;->_h264_minimal_api_level:I

    goto :goto_6

    .line 692
    :cond_d
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/webrtc/videoengine/ViEOMXHelper;->log(ZLjava/lang/String;)V

    .line 624
    return-void
.end method

.method private static log(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 617
    if-eqz p0, :cond_0

    .line 618
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static readIntFromJson(Landroid/util/JsonReader;)I
    .locals 3
    .parameter

    .prologue
    .line 42
    const-string/jumbo v0, "STRING"

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 44
    const/16 v0, 0xa

    .line 45
    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string/jumbo v0, "0x"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const/16 v0, 0x10

    .line 49
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method public static vp8Colorspaces()[I
    .locals 5

    .prologue
    .line 608
    sget-object v0, Lorg/webrtc/videoengine/ViEOMXHelper;->vp8_colorspaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 609
    const/4 v0, 0x0

    .line 610
    sget-object v1, Lorg/webrtc/videoengine/ViEOMXHelper;->vp8_colorspaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 611
    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_0

    .line 613
    :cond_0
    return-object v2
.end method
