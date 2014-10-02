package com.viber.voip.settings;

import android.content.Context;
import android.os.Handler;
import com.viber.voip.util.bj;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

public class b
{
  protected final ReentrantLock a = new ReentrantLock();
  protected String b;
  private Map<String, Object> d = Collections.synchronizedMap(new HashMap());
  
  protected b(a parama, Context paramContext, String paramString)
  {
    this.b = bj.b(paramContext, paramString);
    File localFile = new File(this.b);
    localFile.mkdirs();
    localFile.mkdir();
  }
  
  protected Map<String, ? extends Object> a()
  {
    synchronized (this.d)
    {
      this.d.clear();
      for (String str : bj.c(this.b)) {
        this.d.put(str, e(str));
      }
      HashMap localHashMap = new HashMap(this.d);
      return localHashMap;
    }
  }
  
  protected void a(String paramString)
  {
    this.c.c.post(new c(this, paramString));
  }
  
  protected void a(String paramString, Object paramObject)
  {
    this.c.c.post(new d(this, paramString, paramObject));
  }
  
  protected boolean b(String paramString)
  {
    return d(paramString);
  }
  
  protected Object c(String paramString)
  {
    return e(paramString);
  }
  
  protected boolean d(String paramString)
  {
    this.a.lock();
    try
    {
      boolean bool = new File(f(paramString)).exists();
      return bool;
    }
    finally
    {
      this.a.unlock();
    }
  }
  
  protected Object e(String paramString)
  {
    return bj.b(f(paramString), this.a);
  }
  
  protected String f(String paramString)
  {
    return this.b + paramString;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.b
 * JD-Core Version:    0.7.0.1
 */