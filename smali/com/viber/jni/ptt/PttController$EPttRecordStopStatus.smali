.class public Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static RECORD_STOP_FAILED:I

.field public static RECORD_STOP_NO_RECORD:I

.field public static RECORD_STOP_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;->RECORD_STOP_OK:I

    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;->RECORD_STOP_NO_RECORD:I

    .line 24
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;->RECORD_STOP_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
