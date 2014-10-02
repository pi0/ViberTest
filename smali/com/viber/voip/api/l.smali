.class final Lcom/viber/voip/api/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/n;


# instance fields
.field final synthetic a:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic b:Lcom/viber/jni/connection/ConnectionListener;

.field final synthetic c:Lcom/viber/voip/api/z;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/connection/ConnectionListener;Lcom/viber/voip/api/z;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/viber/voip/api/l;->a:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p2, p0, Lcom/viber/voip/api/l;->b:Lcom/viber/jni/connection/ConnectionListener;

    iput-object p3, p0, Lcom/viber/voip/api/l;->c:Lcom/viber/voip/api/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/viber/voip/api/l;->a:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 722
    iget-object v0, p0, Lcom/viber/voip/api/l;->b:Lcom/viber/jni/connection/ConnectionListener;

    invoke-virtual {v0, p0}, Lcom/viber/jni/connection/ConnectionListener;->removeDelegate(Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lcom/viber/voip/api/l;->c:Lcom/viber/voip/api/z;

    iget-object v1, p0, Lcom/viber/voip/api/l;->a:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-interface {v0, v1}, Lcom/viber/voip/api/z;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 725
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/viber/voip/api/l;->b:Lcom/viber/jni/connection/ConnectionListener;

    invoke-virtual {v0, p0}, Lcom/viber/jni/connection/ConnectionListener;->removeDelegate(Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/viber/voip/api/l;->c:Lcom/viber/voip/api/z;

    invoke-interface {v0}, Lcom/viber/voip/api/z;->a()V

    .line 731
    return-void
.end method
