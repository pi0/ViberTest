.class Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method private constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerWrapper$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListenerImpl.onCallStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #getter for: Lcom/viber/jni/PhoneControllerWrapper;->mPhoneControllerListener:Lcom/viber/jni/PhoneControllerListener;
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$300(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/jni/PhoneControllerListener;->onGSMStateChange(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "# CALL_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isGSMCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleGSMStateChange(I)V

    .line 122
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->reschedulePhoneStateWatchdog(Ljava/lang/Runnable;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneStateListenerImpl;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleGSMStateChange(I)V

    goto :goto_0
.end method
