package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerListener;
import java.util.TimerTask;

class MockPttController$3
  extends TimerTask
{
  MockPttController$3(MockPttController paramMockPttController, int paramInt, String paramString, LocationInfo paramLocationInfo, long paramLong) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    MockPttController.access$000(this.this$0).onMessageDelivered(l, System.currentTimeMillis(), this.val$seq, 0);
    MockPttController.access$000(this.this$0).onPttReceived(l + 1000L, this.val$number, System.currentTimeMillis(), 0, 0, this.val$location, String.valueOf(this.val$objID) + "_incom", 500, "PTTMock");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.3
 * JD-Core Version:    0.7.0.1
 */