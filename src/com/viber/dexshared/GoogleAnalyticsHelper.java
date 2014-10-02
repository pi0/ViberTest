package com.viber.dexshared;

import android.app.Activity;
import android.content.Context;

public abstract interface GoogleAnalyticsHelper
{
  public abstract void activityStart(Activity paramActivity);
  
  public abstract void activityStop(Activity paramActivity);
  
  public abstract void init(Context paramContext, String paramString);
  
  public abstract void initViberTracker(Context paramContext, String paramString, double paramDouble, boolean paramBoolean, int paramInt);
  
  public abstract void sendEvent(String paramString1, String paramString2, String paramString3, Long paramLong);
  
  public abstract void sendSocial(String paramString1, String paramString2, String paramString3);
  
  public abstract void sendTransaction(String paramString1, long paramLong1, String paramString2, long paramLong2, long paramLong3, String paramString3, String paramString4, String paramString5, long paramLong4, String paramString6);
  
  public abstract void sendView(String paramString);
  
  public abstract void sendViewWithoutParams();
  
  public abstract void setCustomDimension(int paramInt, String paramString);
  
  public abstract void setCustomMetric(int paramInt, long paramLong);
  
  public abstract void setDebug(boolean paramBoolean);
  
  public abstract void setDefaultTracker();
  
  public abstract void setDispatchPeriod(int paramInt);
  
  public abstract void setSampleRate(double paramDouble);
  
  public abstract void setStarSession(boolean paramBoolean);
  
  public abstract void trackEvent(String paramString1, String paramString2, String paramString3, Long paramLong);
  
  public abstract void trackTiming(String paramString1, long paramLong, String paramString2, String paramString3);
  
  public abstract void trackView(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.dexshared.GoogleAnalyticsHelper
 * JD-Core Version:    0.7.0.1
 */