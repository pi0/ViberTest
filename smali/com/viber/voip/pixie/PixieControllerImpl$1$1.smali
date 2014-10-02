.class Lcom/viber/voip/pixie/PixieControllerImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;


# direct methods
.method constructor <init>(Lcom/viber/voip/pixie/PixieControllerImpl$1;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v6, 0x3

    .line 68
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pixie: Phone controller is ready, calling native start pixie, setting traffic redirect."

    invoke-static {v6, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v1, v1, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mStartPixieOnPhoneControllerReady:Lcom/viber/jni/PhoneControllerReadyListener;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$100(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerReadyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    sget v1, Lcom/viber/voip/pixie/Config;->DEFAULT_LOCAL_PROXY_PORT:I

    #setter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I
    invoke-static {v0, v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$302(Lcom/viber/voip/pixie/PixieControllerImpl;I)I

    .line 75
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 77
    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v1, v1, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    #setter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I
    invoke-static {v1, v2}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$302(Lcom/viber/voip/pixie/PixieControllerImpl;I)I

    .line 78
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 79
    const/4 v0, 0x3

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pixie: will run server on port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v3, v3, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I
    invoke-static {v3}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$300(Lcom/viber/voip/pixie/PixieControllerImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/pixie/PixieServices;->getEdgeProxyBundle()Ljava/lang/String;

    move-result-object v3

    .line 85
    if-nez v3, :cond_0

    .line 86
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pixie: list is empty!"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pixie: could not listen(0) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #setter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mUseLocalProxy:Z
    invoke-static {v0, v4}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$502(Lcom/viber/voip/pixie/PixieControllerImpl;Z)Z

    .line 91
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    const-string/jumbo v1, "127.0.0.1"

    iget-object v2, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v2, v2, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I
    invoke-static {v2}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$300(Lcom/viber/voip/pixie/PixieControllerImpl;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v4, v4, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v4}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/pixie/PixieServices;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v5, v5, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPixieServices:Lcom/viber/voip/pixie/PixieServices;
    invoke-static {v5}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$400(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/voip/pixie/PixieServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/pixie/PixieServices;->getObfuscationPolicy()C

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerWrapper;->startPixie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mLocalProxyPort:I
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$300(Lcom/viber/voip/pixie/PixieControllerImpl;)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->setupClientToUseLocalProxy(I)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #calls: Lcom/viber/voip/pixie/PixieControllerImpl;->notifyItsOkayToUseNetwork()V
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$600(Lcom/viber/voip/pixie/PixieControllerImpl;)V

    .line 103
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Pixie: waiting for phone controler to be fully initialized"

    invoke-static {v6, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v0, v0, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mPhoneController:Lcom/viber/jni/PhoneControllerWrapper;
    invoke-static {v0}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$200(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$1$1;->this$1:Lcom/viber/voip/pixie/PixieControllerImpl$1;

    iget-object v1, v1, Lcom/viber/voip/pixie/PixieControllerImpl$1;->this$0:Lcom/viber/voip/pixie/PixieControllerImpl;

    #getter for: Lcom/viber/voip/pixie/PixieControllerImpl;->mUpdatePixieModeOnPhoneControllerInitialized:Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;
    invoke-static {v1}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$700(Lcom/viber/voip/pixie/PixieControllerImpl;)Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto/16 :goto_1
.end method
