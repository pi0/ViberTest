.class public Lcom/viber/voip/phone/call/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerController;


# instance fields
.field private a:Lcom/viber/jni/dialer/DialerController;

.field private b:Lcom/viber/voip/phone/call/a;


# direct methods
.method public constructor <init>(Lcom/viber/jni/dialer/DialerController;Lcom/viber/voip/phone/call/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    .line 21
    iput-object p2, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    .line 22
    return-void
.end method


# virtual methods
.method public getMediaStats()Lcom/viber/jni/MediaStats;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->getMediaStats()Lcom/viber/jni/MediaStats;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->getPhoneState()I

    move-result v0

    return v0
.end method

.method public getVoiceStats(Lcom/viber/jni/VoiceStats;)Lcom/viber/jni/VoiceStats;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1}, Lcom/viber/jni/dialer/DialerController;->getVoiceStats(Lcom/viber/jni/VoiceStats;)Lcom/viber/jni/VoiceStats;

    move-result-object v0

    return-object v0
.end method

.method public handleAnswer()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleAnswer()V

    .line 47
    return-void
.end method

.method public handleCallMissed(JLjava/lang/String;IILjava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/viber/jni/dialer/DialerController;->handleCallMissed(JLjava/lang/String;IILjava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public handleCallReceived(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JIIJ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    invoke-interface/range {v0 .. v13}, Lcom/viber/jni/dialer/DialerController;->handleCallReceived(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JIIJ)V

    .line 95
    return-void
.end method

.method public handleCallStarted()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleCallStarted()V

    .line 100
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleClose()V

    .line 87
    return-void
.end method

.method public handleDecline()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleDecline()V

    .line 67
    return-void
.end method

.method public handleDial(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/a;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public handleDialViberOut(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/a;->b(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public handleDialogReply(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1, p2}, Lcom/viber/jni/dialer/DialerController;->handleDialogReply(ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public handleHangup()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 72
    return-void
.end method

.method public handleHangupReply(ZJI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/viber/jni/dialer/DialerController;->handleHangupReply(ZJI)V

    .line 112
    return-void
.end method

.method public handleLocalHold()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleLocalHold()V

    .line 27
    return-void
.end method

.method public handleLocalUnhold()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleLocalUnhold()V

    .line 32
    return-void
.end method

.method public handleMute()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->e()V

    .line 37
    return-void
.end method

.method public handleRedial()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleRedial()V

    .line 62
    return-void
.end method

.method public handleSwitchToGSM(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1}, Lcom/viber/jni/dialer/DialerController;->handleSwitchToGSM(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public handleTransfer(Z)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/call/a;->b(Z)V

    .line 132
    return-void
.end method

.method public handleTransferReply(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/jni/dialer/DialerController;->handleTransferReply(JI)V

    .line 137
    return-void
.end method

.method public handleUnmute()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->b:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->f()V

    .line 42
    return-void
.end method

.method public queryVoiceQuality()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->queryVoiceQuality()I

    move-result v0

    return v0
.end method

.method public setCaptureDeviceName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1}, Lcom/viber/jni/dialer/DialerController;->setCaptureDeviceName(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public startRecvVideo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1}, Lcom/viber/jni/dialer/DialerController;->startRecvVideo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startSendVideo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0, p1}, Lcom/viber/jni/dialer/DialerController;->startSendVideo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public stopRecvVideo()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->stopRecvVideo()I

    move-result v0

    return v0
.end method

.method public stopSendVideo()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/viber/voip/phone/call/j;->a:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->stopSendVideo()I

    move-result v0

    return v0
.end method
