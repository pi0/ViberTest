.class public Lcom/viber/jni/ptt/PttController$EPttUploadStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static UPLOAD_FAILED:I

.field public static UPLOAD_FAILED_TOO_SHORT:I

.field public static UPLOAD_NO_CONNECTION:I

.field public static UPLOAD_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_OK:I

    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_NO_CONNECTION:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_FAILED_TOO_SHORT:I

    .line 39
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
