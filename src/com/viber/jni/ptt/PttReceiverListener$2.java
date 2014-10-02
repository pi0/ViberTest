package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;
import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttReceiverListener$2
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Receiver>
{
  PttReceiverListener$2(PttReceiverListener paramPttReceiverListener, long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, int paramInt3, String paramString4, int paramInt4) {}
  
  public void execute(PttControllerDelegate.Receiver paramReceiver)
  {
    paramReceiver.onPttReceivedFromGroup(this.val$groupID, this.val$groupName, this.val$token, this.val$fromNumber, this.val$timeSent, this.val$flags, this.val$seq, this.val$location, this.val$downloadID, this.val$uploadDuration, this.val$clientName, this.val$messageID);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttReceiverListener.2
 * JD-Core Version:    0.7.0.1
 */