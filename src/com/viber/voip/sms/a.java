package com.viber.voip.sms;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Handler;
import android.util.SparseBooleanArray;
import com.viber.voip.util.al;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class a
{
  private static final Uri f = Uri.parse("content://mms-sms/threadID");
  private static final String[] g = { "_id" };
  private static final String m = a.class.getSimpleName();
  private ContentResolver a;
  private Context b;
  private Handler c;
  private SparseBooleanArray d = new SparseBooleanArray();
  private ContentObserver e;
  private int h = 0;
  private final Set<i> i = Collections.synchronizedSet(new HashSet());
  private j j;
  private HashMap<String, Integer> k = new b(this);
  private Runnable l = new h(this);
  
  public a(Context paramContext, Handler paramHandler)
  {
    this.b = paramContext;
    this.a = this.b.getContentResolver();
    this.c = paramHandler;
    this.j = new j();
    d();
    this.e = new c(this, this.c);
  }
  
  private void a(int paramInt, String paramString1, String paramString2)
  {
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      if (locali != null) {
        locali.a(paramInt, paramString1, paramString2);
      }
    }
  }
  
  private void c(String paramString) {}
  
  private void d()
  {
    String str1 = Build.MANUFACTURER.toLowerCase();
    String str2 = Build.MODEL.toLowerCase();
    if ((!this.k.containsKey(str1)) || (str2.contains("nexus")))
    {
      this.h = 2130838510;
      return;
    }
    this.h = ((Integer)this.k.get(str1)).intValue();
  }
  
  private void e()
  {
    if (this.j.a())
    {
      s.f();
      s.a(false);
    }
  }
  
  public int a(String paramString)
  {
    Uri.Builder localBuilder = f.buildUpon();
    localBuilder.appendQueryParameter("recipient", paramString);
    Uri localUri = localBuilder.build();
    Cursor localCursor = this.a.query(localUri, g, null, null, null);
    if (localCursor != null) {}
    try
    {
      if (localCursor.moveToFirst())
      {
        int n = localCursor.getInt(0);
        return n;
      }
      c("getOrCreateThreadId returned no rows!");
      al.a(localCursor);
      c("getOrCreateThreadId failed with uri " + localUri.toString());
      return -1;
    }
    finally
    {
      al.a(localCursor);
    }
  }
  
  public void a()
  {
    this.a.registerContentObserver(Uri.parse("content://sms"), true, this.e);
  }
  
  public void a(int paramInt)
  {
    d locald = new d(this, paramInt);
    this.c.postDelayed(locald, 6000L);
  }
  
  public void a(i parami)
  {
    this.i.add(parami);
  }
  
  public void a(String paramString1, String paramString2)
  {
    c("insertSilentSms");
    e locale = new e(this, paramString1, paramString2);
    this.c.post(locale);
  }
  
  public void b()
  {
    this.a.unregisterContentObserver(this.e);
  }
  
  public void b(i parami)
  {
    if (this.i.contains(parami)) {
      this.i.remove(parami);
    }
  }
  
  public void b(String paramString)
  {
    if (!s.b()) {
      return;
    }
    this.c.removeCallbacks(this.l);
    f localf = new f(this, paramString);
    this.c.post(localf);
    this.c.postDelayed(this.l, 43200000L);
  }
  
  public void c()
  {
    g localg = new g(this);
    this.c.post(localg);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.a
 * JD-Core Version:    0.7.0.1
 */