package com.viber.jni.ptt;

import java.util.TimerTask;

class MockPttController$7
  extends TimerTask
{
  MockPttController$7(MockPttController paramMockPttController) {}
  
  public void run()
  {
    MockPttController.access$500(this.this$0, PttController.EPttStopReason.STOP_REASON_TRACK_ENDED);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.7
 * JD-Core Version:    0.7.0.1
 */