package com.google.analytics.tracking.android;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public class GoogleAnalytics
{
  private static GoogleAnalytics sInstance;
  private Context mContext;
  private ITracker mTrackerDelegate;
  private final Map<String, Tracker> mTrackers = new HashMap();
  
  private GoogleAnalytics(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public static GoogleAnalytics getInstance(Context paramContext)
  {
    try
    {
      if (sInstance == null) {
        sInstance = new GoogleAnalytics(paramContext);
      }
      GoogleAnalytics localGoogleAnalytics = sInstance;
      return localGoogleAnalytics;
    }
    finally {}
  }
  
  public Tracker getTracker(String paramString)
  {
    if (paramString == null) {
      try
      {
        throw new IllegalArgumentException("trackingId cannot be null");
      }
      finally {}
    }
    Tracker localTracker = (Tracker)this.mTrackers.get(paramString);
    if (localTracker == null)
    {
      localTracker = new Tracker(this.mContext, paramString, this.mTrackerDelegate);
      this.mTrackers.put(paramString, localTracker);
    }
    return localTracker;
  }
  
  public void setTrackerDelegate(ITracker paramITracker)
  {
    this.mTrackerDelegate = paramITracker;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.analytics.tracking.android.GoogleAnalytics
 * JD-Core Version:    0.7.0.1
 */