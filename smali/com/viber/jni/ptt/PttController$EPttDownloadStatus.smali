.class public Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DOWNLOAD_FAILED:I

.field public static DOWNLOAD_FILE_NOT_AVAILABLE:I

.field public static DOWNLOAD_NO_CONNECTION:I

.field public static DOWNLOAD_NO_SPACE:I

.field public static DOWNLOAD_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_NO_CONNECTION:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_FILE_NOT_AVAILABLE:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_NO_SPACE:I

    .line 47
    const/4 v0, 0x4

    sput v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
