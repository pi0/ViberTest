.class public Lcom/viber/jni/ptt/PttDownloaderListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;",
        ">;",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/viber/jni/ptt/PttDownloaderListener$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/ptt/PttDownloaderListener$1;-><init>(Lcom/viber/jni/ptt/PttDownloaderListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttDownloaderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 24
    return-void
.end method

.method public onPttDownloaded(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/viber/jni/ptt/PttDownloaderListener$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/ptt/PttDownloaderListener$2;-><init>(Lcom/viber/jni/ptt/PttDownloaderListener;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttDownloaderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 35
    return-void
.end method
