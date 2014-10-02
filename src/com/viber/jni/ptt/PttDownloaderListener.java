package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener;

public class PttDownloaderListener
  extends ControllerListener<PttControllerDelegate.Downloader>
  implements PttControllerDelegate.Downloader
{
  public void onDownloadPtt(String paramString1, String paramString2, int paramInt)
  {
    notifyListeners(new PttDownloaderListener.1(this, paramString1, paramString2, paramInt));
  }
  
  public void onPttDownloaded(String paramString, int paramInt1, int paramInt2)
  {
    notifyListeners(new PttDownloaderListener.2(this, paramString, paramInt1, paramInt2));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttDownloaderListener
 * JD-Core Version:    0.7.0.1
 */