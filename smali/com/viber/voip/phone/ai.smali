.class public Lcom/viber/voip/phone/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/VideoCallActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/VideoCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localHold()V
    .locals 0

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/viber/voip/phone/ai;->peerHold()V

    .line 506
    return-void
.end method

.method public localUnhold()V
    .locals 0

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/viber/voip/phone/ai;->peerUnhold()V

    .line 511
    return-void
.end method

.method public onPeerVideoEnded()I
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    const-string/jumbo v1, "onPeerVideoEnded"

    invoke-static {v0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Lcom/viber/voip/phone/VideoCallActivity;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/VideoCallActivity;->d(Lcom/viber/voip/phone/VideoCallActivity;)V

    .line 530
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoEndedAck()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStarted()I
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    const-string/jumbo v1, "onPeerVideoStarted"

    invoke-static {v0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Lcom/viber/voip/phone/VideoCallActivity;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/VideoCallActivity;->c(Lcom/viber/voip/phone/VideoCallActivity;)V

    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStartedAck()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public peerHold()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    new-instance v1, Lcom/viber/voip/phone/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/aj;-><init>(Lcom/viber/voip/phone/ai;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public peerUnhold()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    new-instance v1, Lcom/viber/voip/phone/ak;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/ak;-><init>(Lcom/viber/voip/phone/ai;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method
