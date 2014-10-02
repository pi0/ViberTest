.class public Lcom/viber/jni/ptt/PttController$EPttStopStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static STOP_FAILED:I

.field public static STOP_NO_FILE:I

.field public static STOP_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopStatus;->STOP_OK:I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopStatus;->STOP_NO_FILE:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttStopStatus;->STOP_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
