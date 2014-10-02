package com.viber.jni.ptt;

import com.viber.jni.PhoneControllerListener;
import java.util.Timer;
import java.util.TimerTask;

class MockPttController$1
  extends TimerTask
{
  MockPttController$1(MockPttController paramMockPttController, int paramInt) {}
  
  public void run()
  {
    MockPttController.access$000(this.this$0).onStartRecordPttReply(this.val$seq, String.valueOf(this.val$seq), PttController.EPttRecordStatus.RECORD_OK);
    MockPttController.access$000(this.this$0).onStartPttIndicator();
    MockPttController.access$200(this.this$0).schedule(new MockPttController.1.1(this), 1000L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.1
 * JD-Core Version:    0.7.0.1
 */