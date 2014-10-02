package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;
import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttReceiverListener$1
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Receiver>
{
  PttReceiverListener$1(PttReceiverListener paramPttReceiverListener, long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, int paramInt3, String paramString3) {}
  
  public void execute(PttControllerDelegate.Receiver paramReceiver)
  {
    paramReceiver.onPttReceived(this.val$token, this.val$number, this.val$timeSent, this.val$flags, this.val$seq, this.val$location, this.val$downloadID, this.val$uploadDuration, this.val$clientName);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttReceiverListener.1
 * JD-Core Version:    0.7.0.1
 */