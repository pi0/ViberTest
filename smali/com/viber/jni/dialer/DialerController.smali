.class public interface abstract Lcom/viber/jni/dialer/DialerController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMediaStats()Lcom/viber/jni/MediaStats;
.end method

.method public abstract getPhoneState()I
.end method

.method public abstract getVoiceStats(Lcom/viber/jni/VoiceStats;)Lcom/viber/jni/VoiceStats;
.end method

.method public abstract handleAnswer()V
.end method

.method public abstract handleCallMissed(JLjava/lang/String;IILjava/lang/String;Z)V
.end method

.method public abstract handleCallReceived(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JIIJ)V
.end method

.method public abstract handleCallStarted()V
.end method

.method public abstract handleClose()V
.end method

.method public abstract handleDecline()V
.end method

.method public abstract handleDial(Ljava/lang/String;)V
.end method

.method public abstract handleDialViberOut(Ljava/lang/String;)V
.end method

.method public abstract handleDialogReply(ILjava/lang/String;)V
.end method

.method public abstract handleHangup()V
.end method

.method public abstract handleHangupReply(ZJI)V
.end method

.method public abstract handleLocalHold()V
.end method

.method public abstract handleLocalUnhold()V
.end method

.method public abstract handleMute()V
.end method

.method public abstract handleRedial()V
.end method

.method public abstract handleSwitchToGSM(Ljava/lang/String;)V
.end method

.method public abstract handleTransfer(Z)V
.end method

.method public abstract handleTransferReply(JI)V
.end method

.method public abstract handleUnmute()V
.end method

.method public abstract queryVoiceQuality()I
.end method

.method public abstract setCaptureDeviceName(Ljava/lang/String;)V
.end method

.method public abstract startRecvVideo(Ljava/lang/Object;)I
.end method

.method public abstract startSendVideo(Ljava/lang/Object;)I
.end method

.method public abstract stopRecvVideo()I
.end method

.method public abstract stopSendVideo()I
.end method
