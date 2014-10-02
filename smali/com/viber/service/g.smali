.class Lcom/viber/service/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;


# instance fields
.field final synthetic a:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic b:Lcom/viber/jni/connection/ConnectionListener;

.field final synthetic c:Lcom/viber/service/i;

.field final synthetic d:Lcom/viber/service/f;


# direct methods
.method constructor <init>(Lcom/viber/service/f;Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/connection/ConnectionListener;Lcom/viber/service/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/viber/service/g;->d:Lcom/viber/service/f;

    iput-object p2, p0, Lcom/viber/service/g;->a:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p3, p0, Lcom/viber/service/g;->b:Lcom/viber/jni/connection/ConnectionListener;

    iput-object p4, p0, Lcom/viber/service/g;->c:Lcom/viber/service/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/service/g;->a:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/viber/service/g;->b:Lcom/viber/jni/connection/ConnectionListener;

    invoke-virtual {v0, p0}, Lcom/viber/jni/connection/ConnectionListener;->removeDelegate(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/viber/service/g;->c:Lcom/viber/service/i;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/viber/service/g;->c:Lcom/viber/service/i;

    invoke-interface {v0}, Lcom/viber/service/i;->a()V

    .line 33
    :cond_0
    return-void
.end method
