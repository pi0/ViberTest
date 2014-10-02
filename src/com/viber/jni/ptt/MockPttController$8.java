package com.viber.jni.ptt;

import com.viber.jni.PhoneControllerListener;
import java.util.TimerTask;

class MockPttController$8
  extends TimerTask
{
  MockPttController$8(MockPttController paramMockPttController, String paramString, int paramInt) {}
  
  public void run()
  {
    MockPttController.access$000(this.this$0).onStopPlayPttReply(this.val$pttPlaing, PttController.EPttStopStatus.STOP_OK);
    MockPttController.access$000(this.this$0).onPttPlayStopped(this.val$pttPlaing, this.val$reason);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.8
 * JD-Core Version:    0.7.0.1
 */