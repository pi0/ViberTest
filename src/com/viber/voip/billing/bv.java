package com.viber.voip.billing;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.contacts.c.d.at;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.dx;
import com.viber.voip.process.k;
import com.viber.voip.settings.l;
import java.util.ArrayList;
import java.util.Iterator;

public class bv
{
  private static final String a = bv.class.getSimpleName();
  private static bv b;
  private Context c;
  private ap d;
  private cm e;
  private ArrayList<co> f = new ArrayList();
  private Handler g = dc.a(dk.a);
  private boolean h;
  private cs i;
  private co j;
  private Runnable k = new cc(this);
  private cr l = new cf(this);
  
  public bv(Context paramContext)
  {
    this.c = paramContext;
    this.j = new co(this.l);
    this.f.add(new dt(this.l));
    this.f.add(new dp(this.l));
    this.e = new cn();
    this.i = new cs(this);
    this.i.a(new bw(this));
  }
  
  public static bv a()
  {
    if (k.a() != k.a) {
      return null;
    }
    if (b == null) {
      b = new bv(ViberApplication.getInstance());
    }
    return b;
  }
  
  private void a(int paramInt1, int paramInt2, String paramString)
  {
    dl localdl = e();
    if (paramInt1 != 0) {
      localdl.a(this.c.getString(paramInt1));
    }
    localdl.b(this.c.getString(paramInt2));
    localdl.c(paramString);
    localdl.a();
  }
  
  public static void a(cj paramcj)
  {
    b("synchronizePurchasedProducts");
    new ck().a(paramcj);
  }
  
  private boolean a(String paramString, Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo(paramString, 1);
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return false;
  }
  
  private co b(bu parambu)
  {
    return c(parambu.d());
  }
  
  private void b(cj paramcj)
  {
    b("doSynchronizePurchasedProducts");
    a().c().a(true, null, new cd(this, paramcj));
  }
  
  private static void b(String paramString) {}
  
  private co c(bn parambn)
  {
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
    {
      co localco = (co)localIterator.next();
      if (localco.a(parambn)) {
        return localco;
      }
    }
    return this.j;
  }
  
  private void i()
  {
    b("blockCheckHelper()");
    this.h = true;
    this.g.removeCallbacks(this.k);
  }
  
  private void j()
  {
    b("unblockCheckHelper()");
    this.h = false;
    k();
  }
  
  private void k()
  {
    this.g.removeCallbacks(this.k);
    if (!this.h)
    {
      b("checkHelper() checking in 30000ms");
      this.g.postDelayed(this.k, 30000L);
      return;
    }
    b("checkHelper() blocked");
  }
  
  private void l()
  {
    try
    {
      b("destroyIabHelper()");
      if (this.d != null)
      {
        this.d.a(null);
        this.d.a();
        this.d = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(bn parambn)
  {
    a(parambn, null);
  }
  
  public void a(bn parambn, String paramString)
  {
    i();
    PurchaseSupportActivity.a(parambn, paramString);
  }
  
  public void a(bo parambo)
  {
    int m = 0;
    String str = null;
    int n;
    switch (parambo.a())
    {
    default: 
      n = 2131494237;
    }
    for (;;)
    {
      a(m, n, str);
      return;
      m = 2131494235;
      n = 2131494236;
      a.z.getClass();
      str = "618";
    }
  }
  
  void a(bu parambu)
  {
    parambu.e(true);
    b(parambu).b(parambu);
    if (!parambu.m()) {
      d().b(parambu);
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    b("consumeAllStuff, runnable:" + paramRunnable);
    c().a(true, null, new by(this, paramRunnable));
  }
  
  bh b(bn parambn)
  {
    return new ce(this, c(parambn), parambn);
  }
  
  public void b()
  {
    b("prepareOnAppInit");
    d();
    if (!ViberApplication.preferences().b("PREF_MARKET_PRODUCTS_SYNCED", false)) {
      ViberApplication.getInstance().getContactManager().d().a(new bx(this));
    }
  }
  
  /* Error */
  public ap c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 257	com/viber/voip/billing/bv:d	Lcom/viber/voip/billing/ap;
    //   6: ifnonnull +57 -> 63
    //   9: invokestatic 113	com/viber/voip/process/k:a	()Lcom/viber/voip/process/k;
    //   12: getstatic 116	com/viber/voip/process/k:a	Lcom/viber/voip/process/k;
    //   15: if_acmpne +48 -> 63
    //   18: new 207	com/viber/voip/billing/ap
    //   21: dup
    //   22: aload_0
    //   23: getfield 74	com/viber/voip/billing/bv:c	Landroid/content/Context;
    //   26: invokespecial 361	com/viber/voip/billing/ap:<init>	(Landroid/content/Context;)V
    //   29: astore_2
    //   30: aload_0
    //   31: aload_2
    //   32: putfield 257	com/viber/voip/billing/bv:d	Lcom/viber/voip/billing/ap;
    //   35: aload_2
    //   36: new 363	com/viber/voip/billing/ca
    //   39: dup
    //   40: aload_0
    //   41: invokespecial 364	com/viber/voip/billing/ca:<init>	(Lcom/viber/voip/billing/bv;)V
    //   44: invokevirtual 260	com/viber/voip/billing/ap:a	(Lcom/viber/voip/billing/be;)V
    //   47: aload_2
    //   48: new 366	com/viber/voip/billing/cb
    //   51: dup
    //   52: aload_0
    //   53: invokespecial 367	com/viber/voip/billing/cb:<init>	(Lcom/viber/voip/billing/bv;)V
    //   56: invokevirtual 370	com/viber/voip/billing/ap:a	(Lcom/viber/voip/billing/bi;)V
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_2
    //   62: areturn
    //   63: aload_0
    //   64: getfield 257	com/viber/voip/billing/bv:d	Lcom/viber/voip/billing/ap;
    //   67: astore_2
    //   68: goto -9 -> 59
    //   71: astore_1
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	bv
    //   71	4	1	localObject	Object
    //   29	39	2	localap	ap
    // Exception table:
    //   from	to	target	type
    //   2	59	71	finally
    //   63	68	71	finally
  }
  
  public cs d()
  {
    return this.i;
  }
  
  dl e()
  {
    return PurchaseSupportActivity.a();
  }
  
  public void f()
  {
    e().a(this.c.getString(2131494233)).b(this.c.getString(2131494234)).a();
  }
  
  bu[] g()
  {
    return this.e.a();
  }
  
  public boolean h()
  {
    String[] arrayOfString = dx.c;
    int m = arrayOfString.length;
    for (int n = 0; n < m; n++) {
      if (a(arrayOfString[n], this.c)) {
        return false;
      }
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.bv
 * JD-Core Version:    0.7.0.1
 */