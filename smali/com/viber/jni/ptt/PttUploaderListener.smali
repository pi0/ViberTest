.class public Lcom/viber/jni/ptt/PttUploaderListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;",
        ">;",
        "Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;"
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
.method public onPttFirstChunkUploaded(Ljava/lang/String;JII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/viber/jni/ptt/PttUploaderListener$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/ptt/PttUploaderListener$1;-><init>(Lcom/viber/jni/ptt/PttUploaderListener;Ljava/lang/String;JII)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttUploaderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 24
    return-void
.end method

.method public onPttUploaded(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/viber/jni/ptt/PttUploaderListener$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/jni/ptt/PttUploaderListener$2;-><init>(Lcom/viber/jni/ptt/PttUploaderListener;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/ptt/PttUploaderListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 35
    return-void
.end method
