.class public Lcom/viber/jni/ptt/PttController$EPttStopReason;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static STOP_REASON_CALL:I

.field public static STOP_REASON_NEXT_TRACK:I

.field public static STOP_REASON_RECORDING:I

.field public static STOP_REASON_TRACK_ENDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_CALL:I

    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_NEXT_TRACK:I

    .line 68
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_RECORDING:I

    .line 69
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_TRACK_ENDED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
