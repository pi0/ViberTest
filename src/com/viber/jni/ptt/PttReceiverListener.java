package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;
import com.viber.jni.controller.ControllerListener;

public class PttReceiverListener
  extends ControllerListener<PttControllerDelegate.Receiver>
  implements PttControllerDelegate.Receiver
{
  public boolean onPttReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, int paramInt3, String paramString3)
  {
    notifyListeners(new PttReceiverListener.1(this, paramLong1, paramString1, paramLong2, paramInt1, paramInt2, paramLocationInfo, paramString2, paramInt3, paramString3));
    return false;
  }
  
  public boolean onPttReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, int paramInt3, String paramString4, int paramInt4)
  {
    notifyListeners(new PttReceiverListener.2(this, paramLong1, paramString1, paramLong2, paramString2, paramLong3, paramInt1, paramInt2, paramLocationInfo, paramString3, paramInt3, paramString4, paramInt4));
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttReceiverListener
 * JD-Core Version:    0.7.0.1
 */