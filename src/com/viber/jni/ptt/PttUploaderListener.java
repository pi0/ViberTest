package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener;

public class PttUploaderListener
  extends ControllerListener<PttControllerDelegate.Uploader>
  implements PttControllerDelegate.Uploader
{
  public void onPttFirstChunkUploaded(String paramString, long paramLong, int paramInt1, int paramInt2)
  {
    notifyListeners(new PttUploaderListener.1(this, paramString, paramLong, paramInt1, paramInt2));
  }
  
  public void onPttUploaded(String paramString, int paramInt1, int paramInt2)
  {
    notifyListeners(new PttUploaderListener.2(this, paramString, paramInt1, paramInt2));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttUploaderListener
 * JD-Core Version:    0.7.0.1
 */