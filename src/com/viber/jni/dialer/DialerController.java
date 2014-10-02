package com.viber.jni.dialer;

import com.viber.jni.MediaStats;
import com.viber.jni.VoiceStats;

public abstract interface DialerController
{
  public abstract MediaStats getMediaStats();
  
  public abstract int getPhoneState();
  
  public abstract VoiceStats getVoiceStats(VoiceStats paramVoiceStats);
  
  public abstract void handleAnswer();
  
  public abstract void handleCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean);
  
  public abstract void handleCallReceived(long paramLong1, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, String paramString3, long paramLong2, int paramInt1, int paramInt2, long paramLong3);
  
  public abstract void handleCallStarted();
  
  public abstract void handleClose();
  
  public abstract void handleDecline();
  
  public abstract void handleDial(String paramString);
  
  public abstract void handleDialViberOut(String paramString);
  
  public abstract void handleDialogReply(int paramInt, String paramString);
  
  public abstract void handleHangup();
  
  public abstract void handleHangupReply(boolean paramBoolean, long paramLong, int paramInt);
  
  public abstract void handleLocalHold();
  
  public abstract void handleLocalUnhold();
  
  public abstract void handleMute();
  
  public abstract void handleRedial();
  
  public abstract void handleSwitchToGSM(String paramString);
  
  public abstract void handleTransfer(boolean paramBoolean);
  
  public abstract void handleTransferReply(long paramLong, int paramInt);
  
  public abstract void handleUnmute();
  
  public abstract int queryVoiceQuality();
  
  public abstract void setCaptureDeviceName(String paramString);
  
  public abstract int startRecvVideo(Object paramObject);
  
  public abstract int startSendVideo(Object paramObject);
  
  public abstract int stopRecvVideo();
  
  public abstract int stopSendVideo();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerController
 * JD-Core Version:    0.7.0.1
 */