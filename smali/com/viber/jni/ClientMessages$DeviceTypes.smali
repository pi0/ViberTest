.class public Lcom/viber/jni/ClientMessages$DeviceTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_ANDROID:I = 0x1

.field public static final DEVICE_ANDROID_TABLET:I = 0x15

.field public static final DEVICE_APPLE:I = 0x0

.field public static final DEVICE_BACKEND_TEST:I = 0x5f

.field public static final DEVICE_BADA:I = 0x64

.field public static final DEVICE_BADA3:I = 0x6e

.field public static final DEVICE_BLACKBERRY:I = 0x66

.field public static final DEVICE_BLACKBERRY10:I = 0xa

.field public static final DEVICE_FIREFOX_OS:I = 0x71

.field public static final DEVICE_INTERNAL_USE:I = 0x69

.field public static final DEVICE_IOS3:I = 0x8

.field public static final DEVICE_IOSE:I = 0x63

.field public static final DEVICE_IPAD:I = 0x14

.field public static final DEVICE_IPADE:I = 0x62

.field public static final DEVICE_LINUX:I = 0x6

.field public static final DEVICE_MEDIATEK:I = 0x6c

.field public static final DEVICE_MEDIATEK_NATIVE:I = 0x72

.field public static final DEVICE_MNC:I = 0x68

.field public static final DEVICE_MSTAR:I = 0x6a

.field public static final DEVICE_NOKIAS40:I = 0x6d

.field public static final DEVICE_NOKIAS60:I = 0x65

.field public static final DEVICE_OSX:I = 0x7

.field public static final DEVICE_OSX_OLD:I = 0x2

.field public static final DEVICE_SPREADTRUM:I = 0x6b

.field public static final DEVICE_UNKNOWN:I = -0x1

.field public static final DEVICE_VIBER_TERM:I = 0x6f

.field public static final DEVICE_WEB_WIDGET:I = 0x70

.field public static final DEVICE_WINDOWS:I = 0x4

.field public static final DEVICE_WINDOWS8:I = 0x5

.field public static final DEVICE_WP7:I = 0x3

.field public static final DEVICE_WP7_API:I = 0x67

.field public static final DEVICE_WP8:I = 0x9

.field private static final sVisibleTypingDeviceTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/jni/ClientMessages$DeviceTypes;->sVisibleTypingDeviceTypes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId()I
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVisibleInTyping(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 302
    sget-object v2, Lcom/viber/jni/ClientMessages$DeviceTypes;->sVisibleTypingDeviceTypes:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 303
    if-ne v4, p0, :cond_1

    .line 304
    const/4 v0, 0x1

    .line 307
    :cond_0
    return v0

    .line 302
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0c07c2

    .line 270
    sparse-switch p0, :sswitch_data_0

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 271
    :sswitch_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :sswitch_1
    const v0, 0x7f0c07c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :sswitch_2
    const v0, 0x7f0c07c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :sswitch_3
    const v0, 0x7f0c07c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :sswitch_4
    const v0, 0x7f0c07c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :sswitch_5
    const v0, 0x7f0c07c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :sswitch_6
    const v0, 0x7f0c07c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :sswitch_7
    const v0, 0x7f0c07c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :sswitch_8
    const v0, 0x7f0c07ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :sswitch_9
    const v0, 0x7f0c07cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :sswitch_a
    const v0, 0x7f0c07cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :sswitch_b
    const v0, 0x7f0c07cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :sswitch_c
    const v0, 0x7f0c07ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :sswitch_d
    const v0, 0x7f0c07cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :sswitch_e
    const v0, 0x7f0c07d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :sswitch_f
    const v0, 0x7f0c07d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :sswitch_10
    const v0, 0x7f0c07d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :sswitch_11
    const v0, 0x7f0c07d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :sswitch_12
    const v0, 0x7f0c07d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x15 -> :sswitch_b
        0x63 -> :sswitch_c
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_10
        0x6d -> :sswitch_11
        0x6e -> :sswitch_12
    .end sparse-switch
.end method
