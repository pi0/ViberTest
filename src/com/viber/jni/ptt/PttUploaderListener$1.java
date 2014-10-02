package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttUploaderListener$1
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Uploader>
{
  PttUploaderListener$1(PttUploaderListener paramPttUploaderListener, String paramString, long paramLong, int paramInt1, int paramInt2) {}
  
  public void execute(PttControllerDelegate.Uploader paramUploader)
  {
    paramUploader.onPttFirstChunkUploaded(this.val$pttID, this.val$objectID, this.val$uploadDuration, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttUploaderListener.1
 * JD-Core Version:    0.7.0.1
 */