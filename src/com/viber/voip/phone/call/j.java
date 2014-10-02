package com.viber.voip.phone.call;

import com.viber.jni.MediaStats;
import com.viber.jni.VoiceStats;
import com.viber.jni.dialer.DialerController;

public class j
  implements DialerController
{
  private DialerController a;
  private a b;
  
  public j(DialerController paramDialerController, a parama)
  {
    this.a = paramDialerController;
    this.b = parama;
  }
  
  public MediaStats getMediaStats()
  {
    return this.a.getMediaStats();
  }
  
  public int getPhoneState()
  {
    return this.a.getPhoneState();
  }
  
  public VoiceStats getVoiceStats(VoiceStats paramVoiceStats)
  {
    return this.a.getVoiceStats(paramVoiceStats);
  }
  
  public void handleAnswer()
  {
    this.a.handleAnswer();
  }
  
  public void handleCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean)
  {
    this.a.handleCallMissed(paramLong, paramString1, paramInt1, paramInt2, paramString2, paramBoolean);
  }
  
  public void handleCallReceived(long paramLong1, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, String paramString3, long paramLong2, int paramInt1, int paramInt2, long paramLong3)
  {
    this.a.handleCallReceived(paramLong1, paramString1, paramString2, paramBoolean1, paramBoolean2, paramString3, paramLong2, paramInt1, paramInt2, paramLong3);
  }
  
  public void handleCallStarted()
  {
    this.a.handleCallStarted();
  }
  
  public void handleClose()
  {
    this.a.handleClose();
  }
  
  public void handleDecline()
  {
    this.a.handleDecline();
  }
  
  public void handleDial(String paramString)
  {
    this.b.a(paramString);
  }
  
  public void handleDialViberOut(String paramString)
  {
    this.b.b(paramString);
  }
  
  public void handleDialogReply(int paramInt, String paramString)
  {
    this.a.handleDialogReply(paramInt, paramString);
  }
  
  public void handleHangup()
  {
    this.b.a();
  }
  
  public void handleHangupReply(boolean paramBoolean, long paramLong, int paramInt)
  {
    this.a.handleHangupReply(paramBoolean, paramLong, paramInt);
  }
  
  public void handleLocalHold()
  {
    this.a.handleLocalHold();
  }
  
  public void handleLocalUnhold()
  {
    this.a.handleLocalUnhold();
  }
  
  public void handleMute()
  {
    this.b.e();
  }
  
  public void handleRedial()
  {
    this.a.handleRedial();
  }
  
  public void handleSwitchToGSM(String paramString)
  {
    this.a.handleSwitchToGSM(paramString);
  }
  
  public void handleTransfer(boolean paramBoolean)
  {
    this.b.b(paramBoolean);
  }
  
  public void handleTransferReply(long paramLong, int paramInt)
  {
    this.a.handleTransferReply(paramLong, paramInt);
  }
  
  public void handleUnmute()
  {
    this.b.f();
  }
  
  public int queryVoiceQuality()
  {
    return this.a.queryVoiceQuality();
  }
  
  public void setCaptureDeviceName(String paramString)
  {
    this.a.setCaptureDeviceName(paramString);
  }
  
  public int startRecvVideo(Object paramObject)
  {
    return this.a.startRecvVideo(paramObject);
  }
  
  public int startSendVideo(Object paramObject)
  {
    return this.a.startSendVideo(paramObject);
  }
  
  public int stopRecvVideo()
  {
    return this.a.stopRecvVideo();
  }
  
  public int stopSendVideo()
  {
    return this.a.stopSendVideo();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.call.j
 * JD-Core Version:    0.7.0.1
 */