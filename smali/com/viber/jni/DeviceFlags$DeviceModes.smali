.class public Lcom/viber/jni/DeviceFlags$DeviceModes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public AEC_mode:I

.field public AGC_mode:I

.field public NS_mode:I

.field public RxAGC_mode:I

.field public RxNS_mode:I

.field public deviceFlags:I


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v1, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/DeviceFlags$DeviceModes;-><init>(IIIIII)V

    .line 96
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    .line 74
    iput v0, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    .line 75
    iput v0, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    .line 76
    iput v0, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    .line 77
    iput v0, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    .line 78
    iput v0, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->deviceFlags:I

    .line 82
    iput p1, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    .line 83
    iput p2, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    .line 84
    iput p3, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    .line 85
    iput p4, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    .line 86
    iput p5, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    .line 87
    iput p6, p0, Lcom/viber/jni/DeviceFlags$DeviceModes;->deviceFlags:I

    .line 88
    return-void
.end method
