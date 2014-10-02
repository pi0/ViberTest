package com.google.analytics.tracking.android;

import android.content.Context;
import android.os.Handler;
import com.viber.dexshared.GoogleAnalyticsHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.c.b;
import com.viber.voip.c.g;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Tracker
{
  private static final String LOG_TAG = Tracker.class.getSimpleName();
  private GoogleAnalyticsHelper gaHelper;
  private ITracker mTrackerDelegate;
  private List<Runnable> unhandledEvents = new ArrayList();
  
  Tracker(Context paramContext, String paramString, ITracker paramITracker)
  {
    g.a().a(new Tracker.1(this, paramITracker, paramContext, paramString));
  }
  
  private void handleUnhandledEvents()
  {
    if (this.unhandledEvents.size() == 0) {}
    for (;;)
    {
      return;
      Handler localHandler = dc.a(dk.g);
      Iterator localIterator = this.unhandledEvents.iterator();
      while (localIterator.hasNext()) {
        localHandler.postDelayed((Runnable)localIterator.next(), 100L);
      }
    }
  }
  
  public void close()
  {
    throw new UnsupportedOperationException();
  }
  
  public Map<String, String> constructEvent(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    throw new UnsupportedOperationException();
  }
  
  public Map<String, String> constructException(String paramString, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public Map<String, String> constructRawException(String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public Map<String, String> constructSocial(String paramString1, String paramString2, String paramString3)
  {
    throw new UnsupportedOperationException();
  }
  
  public Map<String, String> constructTiming(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    throw new UnsupportedOperationException();
  }
  
  public Map<String, String> constructTransaction(Transaction paramTransaction)
  {
    throw new UnsupportedOperationException();
  }
  
  public String getTrackingId()
  {
    if (this.mTrackerDelegate != null) {}
    for (String str = this.mTrackerDelegate.handleGetTrackingId();; str = null)
    {
      ViberApplication.log(3, LOG_TAG, "getTrackingId() mTrackerDelegate:" + this.mTrackerDelegate + ", returning: " + str);
      return str;
    }
  }
  
  public void send(String paramString, Map<String, String> paramMap)
  {
    throw new UnsupportedOperationException();
  }
  
  public void sendEvent(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleSendEvent(this.gaHelper, paramString1, paramString2, paramString3, paramLong);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.10(this, paramString1, paramString2, paramString3, paramLong));
  }
  
  public void sendException(String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public void sendException(String paramString, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public void sendSocial(String paramString1, String paramString2, String paramString3)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackSocial(this.gaHelper, paramString1, paramString2, paramString3);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.6(this, paramString1, paramString2, paramString3));
  }
  
  public void sendTiming(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    throw new UnsupportedOperationException();
  }
  
  public void sendTransaction(Transaction paramTransaction)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackTransaction(this.gaHelper, paramTransaction);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.11(this, paramTransaction));
  }
  
  public void sendView()
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleSendView(this.gaHelper);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.12(this));
  }
  
  public void sendView(String paramString)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackSendView(this.gaHelper, paramString);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.7(this, paramString));
  }
  
  public void setAnonymizeIp(boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAppId(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAppInstallerId(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAppName(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAppScreen(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAppVersion(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setCampaign(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setCustomDimension(int paramInt, String paramString)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackCustomDimension(this.gaHelper, paramInt, paramString);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.4(this, paramInt, paramString));
  }
  
  public void setCustomDimensionsAndMetrics(Map<Integer, String> paramMap, Map<Integer, Long> paramMap1)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setCustomMetric(int paramInt, Long paramLong)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleSetCustomMetric(this.gaHelper, paramInt, paramLong.longValue());
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.5(this, paramInt, paramLong));
  }
  
  public void setReferrer(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setSampleRate(double paramDouble)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setStartSession(boolean paramBoolean)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleStarSession(this.gaHelper, paramBoolean);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.9(this, paramBoolean));
  }
  
  public void setThrottlingEnabled(boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setUseSecure(boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public void trackEvent(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackEvent(this.gaHelper, paramString1, paramString2, paramString3, paramLong);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.2(this, paramString1, paramString2, paramString3, paramLong));
  }
  
  @Deprecated
  public void trackException(String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public void trackException(String paramString, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public void trackSocial(String paramString1, String paramString2, String paramString3)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public void trackTiming(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackTiming(this.gaHelper, paramString1, paramLong, paramString2, paramString3);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.8(this, paramString1, paramLong, paramString2, paramString3));
  }
  
  @Deprecated
  public void trackTransaction(Transaction paramTransaction)
  {
    if ((this.mTrackerDelegate != null) && (this.gaHelper != null)) {
      this.mTrackerDelegate.handleTrackTransaction(this.gaHelper, paramTransaction);
    }
    while (this.gaHelper != null) {
      return;
    }
    this.unhandledEvents.add(new Tracker.3(this, paramTransaction));
  }
  
  @Deprecated
  public void trackView()
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public void trackView(String paramString)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.google.analytics.tracking.android.Tracker
 * JD-Core Version:    0.7.0.1
 */