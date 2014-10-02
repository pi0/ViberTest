.class public Lcom/viber/jni/ptt/PttController$EPttRecordStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static RECORD_FAILED:I

.field public static RECORD_NO_SPACE:I

.field public static RECORD_OK:I

.field public static RRECORD_IN_CALL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_OK:I

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_NO_SPACE:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RRECORD_IN_CALL:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
