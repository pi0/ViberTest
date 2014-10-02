package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttDownloaderListener$2
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Downloader>
{
  PttDownloaderListener$2(PttDownloaderListener paramPttDownloaderListener, String paramString, int paramInt1, int paramInt2) {}
  
  public void execute(PttControllerDelegate.Downloader paramDownloader)
  {
    paramDownloader.onPttDownloaded(this.val$downloadID, this.val$duration, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttDownloaderListener.2
 * JD-Core Version:    0.7.0.1
 */