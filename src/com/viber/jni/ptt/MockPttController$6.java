package com.viber.jni.ptt;

import com.viber.jni.PhoneControllerListener;
import java.util.TimerTask;

class MockPttController$6
  extends TimerTask
{
  MockPttController$6(MockPttController paramMockPttController, String paramString) {}
  
  public void run()
  {
    MockPttController.access$000(this.this$0).onStartPlayPttReply(this.val$pttID, PttController.EPttPlayStatus.PLAY_OK);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.6
 * JD-Core Version:    0.7.0.1
 */