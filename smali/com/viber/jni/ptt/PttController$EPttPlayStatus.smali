.class public Lcom/viber/jni/ptt/PttController$EPttPlayStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PLAY_BACKGROUND_MODE:I

.field public static PLAY_FAILED:I

.field public static PLAY_FILE_NOT_AVAILABLE:I

.field public static PLAY_FILE_RECORDING:I

.field public static PLAY_IN_CALL:I

.field public static PLAY_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_OK:I

    .line 52
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_FILE_NOT_AVAILABLE:I

    .line 53
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_FILE_RECORDING:I

    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_BACKGROUND_MODE:I

    .line 55
    const/4 v0, 0x4

    sput v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_IN_CALL:I

    .line 56
    const/4 v0, 0x5

    sput v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
