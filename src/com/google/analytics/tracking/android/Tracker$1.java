package com.google.analytics.tracking.android;

import android.content.Context;
import com.viber.dexshared.GoogleAnalyticsHelper;
import com.viber.voip.ViberEnv;
import com.viber.voip.c.f;

class Tracker$1
  implements f
{
  Tracker$1(Tracker paramTracker, ITracker paramITracker, Context paramContext, String paramString) {}
  
  public void onDexLoaded()
  {
    Tracker.access$002(this.this$0, this.val$trackerDelegate);
    Tracker.access$102(this.this$0, ViberEnv.newGoogleAnalyticsHelper());
    Tracker.access$100(this.this$0).init(this.val$context, this.val$trackingId);
    Tracker.access$200(this.this$0);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.google.analytics.tracking.android.Tracker.1
 * JD-Core Version:    0.7.0.1
 */