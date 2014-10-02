package com.viber.voip.a;

import android.app.Activity;
import android.os.SystemClock;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.ITracker;
import com.google.analytics.tracking.android.Transaction;
import com.google.analytics.tracking.android.Transaction.Item;
import com.viber.dexshared.GoogleAnalyticsHelper;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.c.f;
import com.viber.voip.c.g;
import com.viber.voip.contacts.c.d.at;
import com.viber.voip.contacts.c.d.au;
import com.viber.voip.contacts.c.f.b.u;
import com.viber.voip.process.k;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import com.viber.voip.util.ft;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class bc
  extends PhoneControllerDelegateAdapter
  implements ITracker, f, au, m
{
  private static bc b;
  private int a = -1;
  private boolean c = false;
  private boolean d;
  private ViberApplication e;
  private GoogleAnalytics f;
  private GoogleAnalyticsHelper g;
  private List<String> h = new ArrayList();
  private List<x> i = new ArrayList();
  private long j = 0L;
  private String k;
  
  private bc()
  {
    g.a().a(this);
  }
  
  public static bc a()
  {
    if (b == null) {
      b = new bc();
    }
    return b;
  }
  
  private void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, int paramInt, long paramLong)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.setCustomMetric(paramInt, paramLong);
    }
  }
  
  private void b(String paramString)
  {
    if ((this.g != null) && (this.d)) {
      a(1, paramString);
    }
  }
  
  private void c(String paramString)
  {
    ViberApplication.log(3, "AnalyticsTracker", paramString);
  }
  
  private void d()
  {
    if (!this.c) {
      try
      {
        if (!this.c)
        {
          this.e = ViberApplication.getInstance();
          this.f = GoogleAnalytics.getInstance(this.e);
          this.f.setTrackerDelegate(this);
          f();
          this.d = ViberApplication.preferences().b(j.J(), j.K());
          if (k.a() == k.a)
          {
            this.e.getPhoneController(false).registerDelegate(this);
            ViberApplication.getInstance().getContactManager().d().a(this);
            ViberApplication.preferences().a(this);
          }
          this.c = true;
          e();
        }
        return;
      }
      finally {}
    }
  }
  
  private void e()
  {
    c("sendUnhandledReports unhandledPageViews.size=" + this.h.size() + " unhandledEvents.size=" + this.i.size());
    Iterator localIterator1 = this.h.iterator();
    while (localIterator1.hasNext()) {
      a((String)localIterator1.next());
    }
    this.h.clear();
    Iterator localIterator2 = this.i.iterator();
    while (localIterator2.hasNext()) {
      a((x)localIterator2.next());
    }
    this.i.clear();
  }
  
  private void f()
  {
    String str;
    if (this.e != null)
    {
      boolean bool = ViberApplication.preferences().b(j.L(), j.M());
      this.k = "UA-18303830-25";
      if (!bool) {
        break label77;
      }
      str = "UA-18303830-13";
      this.k = str;
      if (!bool) {
        break label83;
      }
    }
    label77:
    label83:
    for (double d1 = bb.c;; d1 = bb.a)
    {
      this.g = ViberEnv.newGoogleAnalyticsHelper();
      this.g.initViberTracker(this.e, this.k, d1, false, 30);
      return;
      str = "UA-18303830-25";
      break;
    }
  }
  
  private void g()
  {
    ViberApplication.getInstance().getContactManager().d().b(this);
  }
  
  public void a(int paramInt)
  {
    if ((this.g != null) && (this.d)) {
      a(2, String.valueOf(paramInt));
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    a(this.g, paramInt, paramString);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    c("onSyncStateChanged state:" + paramInt + " register:" + paramBoolean + ",time:" + (SystemClock.elapsedRealtime() - this.j));
    switch (paramInt)
    {
    default: 
    case 0: 
    case 1: 
    case 2: 
      do
      {
        return;
      } while (this.j != 0L);
      this.j = SystemClock.elapsedRealtime();
      return;
    }
    b(paramInt);
  }
  
  public void a(Activity paramActivity)
  {
    a(this.g, paramActivity);
  }
  
  public void a(Transaction paramTransaction)
  {
    a(this.g, paramTransaction);
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.sendViewWithoutParams();
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, int paramInt, String paramString)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.setCustomDimension(2, paramString);
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Activity paramActivity) {}
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Transaction paramTransaction)
  {
    a(paramTransaction.getTransactionId(), ((Transaction.Item)paramTransaction.getItems().get(0)).getPriceInMicros(), paramTransaction.getAffiliation(), paramTransaction.getTotalTaxInMicros(), paramTransaction.getShippingCostInMicros(), paramTransaction.getCurrencyCode(), ((Transaction.Item)paramTransaction.getItems().get(0)).getSKU(), ((Transaction.Item)paramTransaction.getItems().get(0)).getName(), ((Transaction.Item)paramTransaction.getItems().get(0)).getQuantity(), ((Transaction.Item)paramTransaction.getItems().get(0)).getCategory());
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString)
  {
    if (!this.c) {
      this.h.add(paramString);
    }
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.trackView(paramString);
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, long paramLong1, String paramString2, long paramLong2, long paramLong3, String paramString3, String paramString4, String paramString5, long paramLong4, String paramString6)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d))
    {
      c("Analytics Transaction:  transactionId=" + paramString1 + " priceMicros=" + paramLong1 + " affiliation=" + paramString2 + " totalTaxInMicros=" + paramLong2 + " shippingCostInMicros=" + paramLong3 + " currencyCode=" + paramString3 + " productSKU=" + paramString4 + " productName=" + paramString5 + " productQuantity=" + paramLong4 + " productCategory=" + paramString6);
      paramGoogleAnalyticsHelper.sendTransaction(paramString1, paramLong1, paramString2, paramLong2, paramLong3, paramString3, paramString4, paramString5, paramLong4, paramString6);
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, long paramLong, String paramString2, String paramString3)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.trackTiming(paramString1, paramLong, paramString2, paramString3);
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.sendSocial(paramString1, paramString2, paramString3);
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.trackEvent(paramString1, paramString2, paramString3, paramLong);
    }
  }
  
  public void a(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, boolean paramBoolean)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.setStarSession(paramBoolean);
    }
  }
  
  public void a(c paramc)
  {
    if (paramc != null) {
      a(paramc.a());
    }
  }
  
  public void a(x paramx)
  {
    if (!this.c) {
      this.i.add(paramx);
    }
    a(paramx.a(), paramx.b(), paramx.c(), paramx.d());
  }
  
  public void a(String paramString)
  {
    a(this.g, paramString);
  }
  
  public void a(String paramString1, long paramLong1, String paramString2, long paramLong2, long paramLong3, String paramString3, String paramString4, String paramString5, long paramLong4, String paramString6)
  {
    a(this.g, paramString1, paramLong1, paramString2, paramLong2, paramLong3, paramString3, paramString4, paramString5, paramLong4, paramString6);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    a(this.g, paramString1, paramString2, paramString3, paramLong);
  }
  
  public void b(int paramInt)
  {
    if ((this.g != null) && (this.d)) {
      u.a(ViberApplication.getInstance()).b(new bd(this, paramInt));
    }
  }
  
  public void b(Activity paramActivity)
  {
    b(this.g, paramActivity);
  }
  
  public void b(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Activity paramActivity)
  {
    if (paramGoogleAnalyticsHelper != null) {}
  }
  
  public void b(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.sendView(paramString);
    }
  }
  
  public void b(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    if ((paramGoogleAnalyticsHelper != null) && (this.d)) {
      paramGoogleAnalyticsHelper.sendEvent(paramString1, paramString2, paramString3, paramLong);
    }
  }
  
  public boolean b()
  {
    return this.d;
  }
  
  public String c()
  {
    return this.k;
  }
  
  public String handleGetTrackingId()
  {
    return c();
  }
  
  public void handleSendEvent(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    b(paramGoogleAnalyticsHelper, paramString1, paramString2, paramString3, paramLong);
  }
  
  public void handleSendView(GoogleAnalyticsHelper paramGoogleAnalyticsHelper)
  {
    a(paramGoogleAnalyticsHelper);
  }
  
  public void handleSetCustomMetric(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, int paramInt, long paramLong)
  {
    a(paramGoogleAnalyticsHelper, paramInt, paramLong);
  }
  
  public void handleStarSession(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, boolean paramBoolean)
  {
    a(paramGoogleAnalyticsHelper, paramBoolean);
  }
  
  public void handleTrackActivityStart(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Activity paramActivity)
  {
    a(paramGoogleAnalyticsHelper, paramActivity);
  }
  
  public void handleTrackActivityStop(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Activity paramActivity)
  {
    b(paramGoogleAnalyticsHelper, paramActivity);
  }
  
  public void handleTrackCustomDimension(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, int paramInt, String paramString)
  {
    a(paramGoogleAnalyticsHelper, paramInt, paramString);
  }
  
  public void handleTrackEvent(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    a(paramGoogleAnalyticsHelper, paramString1, paramString2, paramString3, paramLong);
  }
  
  public void handleTrackPageView(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString)
  {
    a(paramGoogleAnalyticsHelper, paramString);
  }
  
  public void handleTrackSendView(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString)
  {
    b(paramGoogleAnalyticsHelper, paramString);
  }
  
  public void handleTrackSocial(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, String paramString2, String paramString3)
  {
    a(paramGoogleAnalyticsHelper, paramString1, paramString2, paramString3);
  }
  
  public void handleTrackTiming(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, String paramString1, long paramLong, String paramString2, String paramString3)
  {
    a(paramGoogleAnalyticsHelper, paramString1, paramLong, paramString2, paramString3);
  }
  
  public void handleTrackTransaction(GoogleAnalyticsHelper paramGoogleAnalyticsHelper, Transaction paramTransaction)
  {
    a(paramGoogleAnalyticsHelper, paramTransaction);
  }
  
  public void onDexLoaded()
  {
    c("onDexLoaded");
    d();
  }
  
  public void onServiceStateChanged(int paramInt)
  {
    int m = ft.a(this.e).a();
    if ((m != this.a) && (m == 0))
    {
      b("3G");
      this.a = 0;
    }
    while ((m == this.a) || (m != 1)) {
      return;
    }
    b("Wireless");
    this.a = 1;
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    if (paramString.equals(j.J())) {
      this.d = ViberApplication.preferences().b(j.J(), j.K());
    }
    if ((paramString.equals(j.L())) || (paramString.equals(j.ag()))) {
      f();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.bc
 * JD-Core Version:    0.7.0.1
 */