package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.settings.l;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ft
{
  private static volatile ft g;
  private int b = -1;
  private int c = -1;
  private boolean d;
  private final ConnectivityManager e;
  private final List<fu> f = new ArrayList();
  private final Context h;
  private fv i;
  
  static
  {
    if (!ft.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ft(Context paramContext)
  {
    this.h = paramContext;
    this.e = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    this.d = this.e.getBackgroundDataSetting();
    c();
    Reachability.1 local1 = new Reachability.1(this);
    this.i = new fv(this, null);
    paramContext.registerReceiver(this.i, local1);
  }
  
  public static ft a(Context paramContext)
  {
    try
    {
      if (g == null) {
        g = new ft(paramContext);
      }
      ft localft = g;
      return localft;
    }
    finally {}
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    a("notifyConnectivityChanged: " + paramInt1 + ", lastNetworkType:" + this.b);
    if (paramInt1 != this.b)
    {
      this.b = paramInt1;
      this.c = paramInt2;
      synchronized (this.f)
      {
        ArrayList localArrayList = new ArrayList(this.f);
        Iterator localIterator = localArrayList.iterator();
        if (localIterator.hasNext()) {
          ((fu)localIterator.next()).connectivityChanged(paramInt1, paramInt2);
        }
      }
    }
  }
  
  private void a(Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("noConnectivity", false))
    {
      a(-1, -1);
      return;
    }
    c();
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean)
  {
    a("notifyBackgroundDataChanged: " + paramBoolean);
    if (paramBoolean != this.d)
    {
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext()) {
        ((fu)localIterator.next()).backgroundDataChanged(paramBoolean);
      }
    }
  }
  
  private void b()
  {
    a("notifyWifiConnectivityChanged");
    synchronized (this.f)
    {
      ArrayList localArrayList = new ArrayList(this.f);
      Iterator localIterator = localArrayList.iterator();
      if (localIterator.hasNext()) {
        ((fu)localIterator.next()).wifiConnectivityChanged();
      }
    }
  }
  
  public static boolean b(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null) {
      return false;
    }
    return localNetworkInfo.isConnected();
  }
  
  private void c()
  {
    NetworkInfo localNetworkInfo = this.e.getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      int j = localNetworkInfo.getType();
      int k = localNetworkInfo.getSubtype();
      a("checkActiveNetworkChange networkType:" + j + ",lastNetworkType:" + this.b);
      if (this.b != j)
      {
        a("Reachability.activeNetworkInfo = " + localNetworkInfo);
        a("Reachability TypeName:" + localNetworkInfo.getTypeName() + "." + j + ", subtype:" + localNetworkInfo.getSubtypeName() + "." + localNetworkInfo.getSubtype());
        a(j, k);
      }
      while (j != 1) {
        return;
      }
      b();
      return;
    }
    a(-1, -1);
  }
  
  public static boolean c(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    boolean bool = b(paramContext);
    if (!bool)
    {
      if (!ViberApplication.preferences().b("airplane_mode", false)) {
        break label70;
      }
      bc localbc3 = bc.a();
      u localu3 = a.z;
      a.z.getClass();
      localbc3.a(localu3.b("202"));
      at.a(paramContext, 2131493791, 2131493792, null);
    }
    for (;;)
    {
      return bool;
      label70:
      if (d(paramContext).booleanValue())
      {
        at.a(paramContext, 2131493794, 2131493774, null);
        bc localbc2 = bc.a();
        u localu2 = a.z;
        a.z.getClass();
        localbc2.a(localu2.b("201"));
      }
      else
      {
        at.a(paramContext, 2131493793, 2131493795, null);
        bc localbc1 = bc.a();
        u localu1 = a.z;
        a.z.getClass();
        localbc1.a(localu1.b("203"));
      }
    }
  }
  
  public static Boolean d(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    try
    {
      Method localMethod = Class.forName(localConnectivityManager.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
      localMethod.setAccessible(true);
      Boolean localBoolean = (Boolean)localMethod.invoke(localConnectivityManager, new Object[0]);
      return localBoolean;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return Boolean.valueOf(true);
  }
  
  public int a()
  {
    return this.b;
  }
  
  public void a(fu paramfu)
  {
    if ((!a) && (paramfu == null)) {
      throw new AssertionError();
    }
    synchronized (this.f)
    {
      this.f.add(paramfu);
      paramfu.connectivityChanged(this.b, this.c);
      return;
    }
  }
  
  public void b(fu paramfu)
  {
    synchronized (this.f)
    {
      this.f.remove(paramfu);
      paramfu.backgroundDataChanged(this.e.getBackgroundDataSetting());
      return;
    }
  }
  
  protected void finalize()
  {
    if (this.h != null) {
      this.h.unregisterReceiver(this.i);
    }
    super.finalize();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.ft
 * JD-Core Version:    0.7.0.1
 */