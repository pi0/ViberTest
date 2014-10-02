package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerListener;
import java.util.TimerTask;

class MockPttController$4
  extends TimerTask
{
  MockPttController$4(MockPttController paramMockPttController, int paramInt, long paramLong1, LocationInfo paramLocationInfo, long paramLong2) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    MockPttController.access$000(this.this$0).onMessageDelivered(l, System.currentTimeMillis(), this.val$seq, 0);
    MockPttController.access$000(this.this$0).onPttReceivedFromGroup(this.val$groupID, "myGroup lol", 1000L + l, "+OLOLO", System.currentTimeMillis(), 0, 0, this.val$location, String.valueOf(this.val$objID) + "_incom", 500, "PttGroup", 1001);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.MockPttController.4
 * JD-Core Version:    0.7.0.1
 */