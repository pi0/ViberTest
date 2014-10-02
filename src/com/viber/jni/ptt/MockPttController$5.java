package com.viber.jni.ptt;

import com.viber.jni.PhoneControllerListener;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;

class MockPttController$5
  extends TimerTask
{
  MockPttController$5(MockPttController paramMockPttController, String paramString1, String paramString2) {}
  
  public void run()
  {
    synchronized (MockPttController.access$400(this.this$0))
    {
      MockPttController.access$400(this.this$0).remove(this.val$pttID);
      MockPttController.access$000(this.this$0).onPttDownloaded(this.val$downloadID, ((Integer)MockPttController.access$300(this.this$0).get(this.val$pttID)).intValue(), PttController.EPttDownloadStatus.DOWNLOAD_OK);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.5
 * JD-Core Version:    0.7.0.1
 */