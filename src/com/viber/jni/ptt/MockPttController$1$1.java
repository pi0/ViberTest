package com.viber.jni.ptt;

import com.viber.jni.PhoneControllerListener;
import java.util.TimerTask;

class MockPttController$1$1
  extends TimerTask
{
  MockPttController$1$1(MockPttController.1 param1) {}
  
  public void run()
  {
    if ((MockPttController.access$100(this.this$1.this$0) > 0L) && (System.currentTimeMillis() - MockPttController.access$100(this.this$1.this$0) >= 1000L)) {
      MockPttController.access$000(this.this$1.this$0).onPttFirstChunkUploaded(String.valueOf(this.this$1.val$seq), this.this$1.val$seq, 500, PttController.EPttUploadStatus.UPLOAD_OK);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.1.1
 * JD-Core Version:    0.7.0.1
 */