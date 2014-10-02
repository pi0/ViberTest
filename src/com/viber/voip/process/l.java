package com.viber.voip.process;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.Iterator;
import java.util.List;

public class l
{
  private static final String a = l.class.getSimpleName() + "." + k.a();
  private static l b;
  private Handler c = dc.a(dk.a);
  private Handler d = dc.a(dk.g);
  private int e;
  private Runnable f = new n(this);
  private Runnable g = new o(this);
  
  public static l a()
  {
    if (b == null) {
      b = new l();
    }
    return b;
  }
  
  private void a(int paramInt)
  {
    b("webActivityOnCreate, total web activities: " + paramInt);
    this.e = paramInt;
  }
  
  private void b()
  {
    b("scheduleCheckerLevel2");
    this.d.removeCallbacks(this.g);
    this.d.postDelayed(this.g, 3000L);
  }
  
  private void b(int paramInt)
  {
    b("webActivityOnDestroy, total web activities: " + paramInt);
    this.e = paramInt;
  }
  
  private static void b(String paramString) {}
  
  private boolean c()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    ActivityManager localActivityManager = (ActivityManager)localViberApplication.getSystemService("activity");
    String str = localViberApplication.getPackageName() + ":browser";
    Iterator localIterator = localActivityManager.getRunningAppProcesses().iterator();
    while (localIterator.hasNext()) {
      if (str.equals(((ActivityManager.RunningAppProcessInfo)localIterator.next()).processName)) {
        return true;
      }
    }
    return false;
  }
  
  public void a(Activity paramActivity)
  {
    if (k.a() == k.c)
    {
      this.e = (1 + this.e);
      new q(null).a(true, this.e);
    }
  }
  
  public void b(Activity paramActivity)
  {
    if (k.a() == k.c) {
      this.c.postDelayed(new m(this), 5000L);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.l
 * JD-Core Version:    0.7.0.1
 */