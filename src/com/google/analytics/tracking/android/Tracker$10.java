package com.google.analytics.tracking.android;

class Tracker$10
  implements Runnable
{
  Tracker$10(Tracker paramTracker, String paramString1, String paramString2, String paramString3, Long paramLong) {}
  
  public void run()
  {
    this.this$0.sendEvent(this.val$category, this.val$action, this.val$label, this.val$value);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.google.analytics.tracking.android.Tracker.10
 * JD-Core Version:    0.7.0.1
 */