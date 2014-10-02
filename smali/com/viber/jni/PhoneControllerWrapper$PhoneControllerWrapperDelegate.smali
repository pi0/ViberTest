.class Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;


# instance fields
.field private deltaTime:J

.field private prevConnectionState:I

.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method private constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 131
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->deltaTime:J

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->prevConnectionState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerWrapper$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;-><init>(Lcom/viber/jni/PhoneControllerWrapper;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;)J
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->deltaTime:J

    return-wide v0
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionStateChange connectionState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " prevConnectionState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->prevConnectionState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    .line 156
    iget v1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->prevConnectionState:I

    if-ne v1, p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    iput p1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->prevConnectionState:I

    .line 159
    if-ne p1, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->CONNECTING:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->notifyServiceStateChanged(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$500(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :goto_1
    #setter for: Lcom/viber/jni/PhoneControllerWrapper;->mConnected:Z
    invoke-static {v1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$602(Lcom/viber/jni/PhoneControllerWrapper;Z)Z

    .line 163
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->resolveServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    invoke-static {v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$700(Lcom/viber/jni/PhoneControllerWrapper;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->notifyServiceStateChanged(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$500(Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onIsRegistered(I)V
    .locals 1
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->updatePushToken()V
    invoke-static {v0}, Lcom/viber/jni/PhoneControllerWrapper;->access$400(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onLBServerTime(J)V
    .locals 4
    .parameter

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->deltaTime:J

    .line 145
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLBServerTime: deltaTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/viber/jni/PhoneControllerWrapper$PhoneControllerWrapperDelegate;->deltaTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/jni/PhoneControllerWrapper;->logout(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->access$200(Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;)V

    .line 146
    return-void
.end method
