.class public Lcom/viber/voip/phone/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/k;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/b/k;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCallBack()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public localHold()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public localUnhold()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public onPeerVideoEnded()I
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoEndedAck()I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStarted()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->h(Lcom/viber/voip/phone/b/k;)V

    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onPeerVideoStartedAck()I
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public onTransferFailed(I)V
    .locals 2
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->e(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/r;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/phone/b/r;-><init>(Lcom/viber/voip/phone/b/p;I)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public onTransferReplyOK(J)V
    .locals 0
    .parameter

    .prologue
    .line 585
    return-void
.end method

.method public peerHold()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->f(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/b/s;-><init>(Lcom/viber/voip/phone/b/p;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public peerUnhold()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->g(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/t;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/b/t;-><init>(Lcom/viber/voip/phone/b/p;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public showCallBack(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 567
    return-void
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 579
    return-void
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->d(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/q;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/b/q;-><init>(Lcom/viber/voip/phone/b/p;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method
