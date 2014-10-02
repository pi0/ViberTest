package com.viber.voip;

import com.viber.jni.ptt.PttController.EPttRecordStatus;
import com.viber.jni.ptt.PttRecorderListener;

final class de
  extends PttRecorderListener
{
  public void onPttRecordStopped(String paramString, int paramInt)
  {
    dc.a(dh.a);
  }
  
  public void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2)
  {
    if (PttController.EPttRecordStatus.RECORD_OK == paramInt2) {
      dc.a(dh.c);
    }
  }
  
  public void onStopRecordPttReply(String paramString, int paramInt)
  {
    dc.a(dh.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.de
 * JD-Core Version:    0.7.0.1
 */