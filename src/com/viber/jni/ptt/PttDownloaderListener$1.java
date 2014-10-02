package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttDownloaderListener$1
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Downloader>
{
  PttDownloaderListener$1(PttDownloaderListener paramPttDownloaderListener, String paramString1, String paramString2, int paramInt) {}
  
  public void execute(PttControllerDelegate.Downloader paramDownloader)
  {
    paramDownloader.onDownloadPtt(this.val$downloadID, this.val$pttID, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttDownloaderListener.1
 * JD-Core Version:    0.7.0.1
 */