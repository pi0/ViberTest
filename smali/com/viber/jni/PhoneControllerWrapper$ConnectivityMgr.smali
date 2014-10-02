.class Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fu;


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method private constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerWrapper$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    return-void
.end method


# virtual methods
.method public backgroundDataChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public connectivityChanged(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectivityChanged networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",networkSubtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #setter for: Lcom/viber/jni/PhoneControllerWrapper;->mNetworkType:I
    invoke-static {v0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->access$802(Lcom/viber/jni/PhoneControllerWrapper;I)I

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$900(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerHelper;->handleConnectivityChange(I)V

    .line 176
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #setter for: Lcom/viber/jni/PhoneControllerWrapper;->mNetworkAvailable:Z
    invoke-static {v0, v4}, Lcom/viber/jni/PhoneControllerWrapper;->access$1002(Lcom/viber/jni/PhoneControllerWrapper;Z)Z

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$900(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/jni/PhoneControllerHelper;->handleConnectivityChange(I)V

    .line 180
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #setter for: Lcom/viber/jni/PhoneControllerWrapper;->mNetworkAvailable:Z
    invoke-static {v0, v4}, Lcom/viber/jni/PhoneControllerWrapper;->access$1002(Lcom/viber/jni/PhoneControllerWrapper;Z)Z

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mPhoneController:Lcom/viber/jni/PhoneControllerHelper;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$900(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/jni/PhoneControllerHelper;->handleConnectivityChange(I)V

    .line 185
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #setter for: Lcom/viber/jni/PhoneControllerWrapper;->mNetworkAvailable:Z
    invoke-static {v0, v3}, Lcom/viber/jni/PhoneControllerWrapper;->access$1002(Lcom/viber/jni/PhoneControllerWrapper;Z)Z

    .line 186
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #setter for: Lcom/viber/jni/PhoneControllerWrapper;->mConnected:Z
    invoke-static {v0, v3}, Lcom/viber/jni/PhoneControllerWrapper;->access$602(Lcom/viber/jni/PhoneControllerWrapper;Z)Z

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wifiConnectivityChanged()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->sendKA()V

    .line 195
    return-void
.end method
