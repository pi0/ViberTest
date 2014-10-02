.class public Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static RECORD_STOP_FAILED:I

.field public static RECORD_STOP_NO_CONNECTION:I

.field public static RECORD_STOP_NO_DEVICE:I

.field public static RECORD_STOP_REASON_CALL:I

.field public static RECORD_STOP_REASON_MAX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;->RECORD_STOP_REASON_CALL:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;->RECORD_STOP_NO_DEVICE:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;->RECORD_STOP_NO_CONNECTION:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;->RECORD_STOP_REASON_MAX_LENGTH:I

    .line 32
    const/4 v0, 0x4

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopReason;->RECORD_STOP_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
