package com.google.analytics.tracking.android;

import android.app.Activity;
import com.viber.dexshared.GoogleAnalyticsHelper;

public abstract interface ITracker
{
  public abstract String handleGetTrackingId();
  
  public abstract void handleSendEvent(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3, Long paramLong);
  
  public abstract void handleSendView(GoogleAnalyticsHelper paramGoogleAnalyticsHelper);
  
  public abstract void handleSetCustomMetric(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, int paramInt, long paramLong);
  
  public abstract void handleStarSession(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, boolean paramBoolean);
  
  public abstract void handleTrackActivityStart(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Activity paramActivity);
  
  public abstract void handleTrackActivityStop(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Activity paramActivity);
  
  public abstract void handleTrackCustomDimension(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, int paramInt, String paramString);
  
  public abstract void handleTrackEvent(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3, Long paramLong);
  
  public abstract void handleTrackPageView(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString);
  
  public abstract void handleTrackSendView(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString);
  
  public abstract void handleTrackSocial(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3);
  
  public abstract void handleTrackTiming(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, long paramLong, String paramString2, String paramString3);
  
  public abstract void handleTrackTransaction(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Transaction paramTransaction);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.analytics.tracking.android.ITracker
 * JD-Core Version:    0.7.0.1
 */