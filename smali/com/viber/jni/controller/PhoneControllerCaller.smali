.class public Lcom/viber/jni/controller/PhoneControllerCaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerReadyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/viber/jni/PhoneControllerReadyListener;"
    }
.end annotation


# static fields
.field private static final METHOD_CALL_COUNT:I = 0x3


# instance fields
.field private mConnection:Lcom/viber/jni/connection/ConnectionController;

.field private mController:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private mReady:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/viber/jni/connection/ConnectionController;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/viber/jni/connection/ConnectionController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mReady:Z

    .line 31
    iput-object p1, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mController:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mConnection:Lcom/viber/jni/connection/ConnectionController;

    .line 33
    return-void
.end method


# virtual methods
.method protected multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback",
            "<TP;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 36
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 37
    iget-boolean v2, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mReady:Z

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_1
    return v0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mController:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;->call(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    const/4 v0, 0x1

    goto :goto_1

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mConnection:Lcom/viber/jni/connection/ConnectionController;

    invoke-interface {v2}, Lcom/viber/jni/connection/ConnectionController;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/jni/controller/PhoneControllerCaller;->mReady:Z

    .line 51
    return-void
.end method
