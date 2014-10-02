package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttUploaderListener$2
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Uploader>
{
  PttUploaderListener$2(PttUploaderListener paramPttUploaderListener, String paramString, int paramInt1, int paramInt2) {}
  
  public void execute(PttControllerDelegate.Uploader paramUploader)
  {
    paramUploader.onPttUploaded(this.val$pttID, this.val$duration, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttUploaderListener.2
 * JD-Core Version:    0.7.0.1
 */