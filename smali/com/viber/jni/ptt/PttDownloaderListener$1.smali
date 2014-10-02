.class Lcom/viber/jni/ptt/PttDownloaderListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/PttDownloaderListener;

.field final synthetic val$downloadID:Ljava/lang/String;

.field final synthetic val$pttID:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttDownloaderListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->this$0:Lcom/viber/jni/ptt/PttDownloaderListener;

    iput-object p2, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->val$downloadID:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->val$pttID:Ljava/lang/String;

    iput p4, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->val$downloadID:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->val$pttID:Ljava/lang/String;

    iget v2, p0, Lcom/viber/jni/ptt/PttDownloaderListener$1;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;->onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttDownloaderListener$1;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;)V

    return-void
.end method
