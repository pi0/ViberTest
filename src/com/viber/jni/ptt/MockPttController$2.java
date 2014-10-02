package com.viber.jni.ptt;

import com.viber.jni.PhoneControllerListener;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;

class MockPttController$2
  extends TimerTask
{
  MockPttController$2(MockPttController paramMockPttController, String paramString) {}
  
  public void run()
  {
    MockPttController.access$000(this.this$0).onStopPttIndicator();
    MockPttController.access$000(this.this$0).onStopRecordPttReply(this.val$pttID, PttController.EPttRecordStopStatus.RECORD_STOP_OK);
    MockPttController.access$000(this.this$0).onPttUploaded(this.val$pttID, ((Integer)MockPttController.access$300(this.this$0).get(this.val$pttID)).intValue(), PttController.EPttUploadStatus.UPLOAD_OK);
    synchronized (MockPttController.access$400(this.this$0))
    {
      if (MockPttController.access$400(this.this$0).contains(this.val$pttID))
      {
        MockPttController.access$000(this.this$0).onPttDownloaded(this.val$pttID + "_incom", ((Integer)MockPttController.access$300(this.this$0).get(this.val$pttID)).intValue(), PttController.EPttDownloadStatus.DOWNLOAD_OK);
        MockPttController.access$400(this.this$0).remove(this.val$pttID);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.2
 * JD-Core Version:    0.7.0.1
 */