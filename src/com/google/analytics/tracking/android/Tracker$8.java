package com.google.analytics.tracking.android;

class Tracker$8
  implements Runnable
{
  Tracker$8(Tracker paramTracker, String paramString1, long paramLong, String paramString2, String paramString3) {}
  
  public void run()
  {
    this.this$0.trackTiming(this.val$category, this.val$intervalInMilliseconds, this.val$name, this.val$label);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.analytics.tracking.android.Tracker.8
 * JD-Core Version:    0.7.0.1
 */