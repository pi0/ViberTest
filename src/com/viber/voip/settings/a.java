package com.viber.voip.settings;

import android.content.Context;
import android.os.Handler;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class a
  implements l
{
  private static final String g = a.class.getSimpleName();
  protected final Map<String, Object> a = Collections.synchronizedMap(new HashMap());
  protected final b b;
  protected final Handler c;
  protected AtomicBoolean d = new AtomicBoolean(false);
  protected Set<String> e = Collections.synchronizedSet(new HashSet());
  protected Set<m> f = Collections.synchronizedSet(new HashSet());
  
  public a(Context paramContext, Handler paramHandler, String paramString)
  {
    this.b = new b(this, paramContext, d(paramString));
    this.c = paramHandler;
  }
  
  private static String d(String paramString)
  {
    if (paramString == null) {
      return "preferences/";
    }
    return "preferences/" + paramString + "/";
  }
  
  public l a()
  {
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localIterator.remove();
      this.b.a((String)localEntry.getKey());
      c((String)localEntry.getKey());
    }
    return this;
  }
  
  public l a(String paramString)
  {
    this.a.remove(paramString);
    this.b.a(paramString);
    c(paramString);
    return this;
  }
  
  public l a(String paramString, float paramFloat)
  {
    return b(paramString, Float.valueOf(paramFloat));
  }
  
  public l a(String paramString, int paramInt)
  {
    return b(paramString, Integer.valueOf(paramInt));
  }
  
  public l a(String paramString, long paramLong)
  {
    return b(paramString, Long.valueOf(paramLong));
  }
  
  public l a(String paramString, Object paramObject)
  {
    if ((paramObject instanceof Boolean)) {
      b(paramString, (Boolean)paramObject);
    }
    do
    {
      return this;
      if ((paramObject instanceof Float))
      {
        b(paramString, (Float)paramObject);
        return this;
      }
      if ((paramObject instanceof Integer))
      {
        b(paramString, (Integer)paramObject);
        return this;
      }
      if ((paramObject instanceof Long))
      {
        b(paramString, (Long)paramObject);
        return this;
      }
    } while (!(paramObject instanceof String));
    b(paramString, (String)paramObject);
    return this;
  }
  
  public l a(String paramString1, String paramString2)
  {
    b(paramString1, paramString2);
    return this;
  }
  
  public l a(String paramString, boolean paramBoolean)
  {
    return b(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public l a(Set<String> paramSet)
  {
    if (paramSet != null)
    {
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext()) {
        a((String)localIterator.next());
      }
    }
    return this;
  }
  
  protected Object a(String paramString, Class<?> paramClass, Object paramObject)
  {
    Object localObject1 = this.a.get(paramString);
    if ((localObject1 != null) && ((paramClass == null) || (localObject1.getClass().equals(paramClass)))) {
      paramObject = localObject1;
    }
    Object localObject2;
    do
    {
      return paramObject;
      localObject2 = this.b.c(paramString);
    } while ((localObject2 == null) || ((paramClass != null) && (!localObject2.getClass().equals(paramClass))));
    this.a.put(paramString, localObject2);
    return localObject2;
  }
  
  public void a(m paramm)
  {
    this.f.add(paramm);
  }
  
  public float b(String paramString, float paramFloat)
  {
    return ((Float)a(paramString, Float.class, Float.valueOf(paramFloat))).floatValue();
  }
  
  public int b(String paramString, int paramInt)
  {
    return ((Integer)a(paramString, Integer.class, Integer.valueOf(paramInt))).intValue();
  }
  
  public long b(String paramString, long paramLong)
  {
    return ((Long)a(paramString, Long.class, Long.valueOf(paramLong))).longValue();
  }
  
  protected l b(String paramString, Object paramObject)
  {
    this.a.put(paramString, paramObject);
    this.b.a(paramString, paramObject);
    c(paramString);
    return this;
  }
  
  public String b(String paramString1, String paramString2)
  {
    return (String)a(paramString1, String.class, paramString2);
  }
  
  public Map<String, ? extends Object> b()
  {
    synchronized (this.a)
    {
      if (!this.d.get())
      {
        localObject2 = this.b.a();
        this.a.putAll((Map)localObject2);
        this.d.set(true);
        return localObject2;
      }
      Object localObject2 = new HashMap(this.a);
    }
  }
  
  public void b(m paramm)
  {
    this.f.remove(paramm);
  }
  
  public boolean b(String paramString)
  {
    if (this.a.containsKey(paramString)) {
      return true;
    }
    synchronized (this.e)
    {
      if (this.e.contains(paramString)) {
        return true;
      }
    }
    boolean bool = this.b.b(paramString);
    if (bool) {
      this.e.add(paramString);
    }
    return bool;
  }
  
  public boolean b(String paramString, boolean paramBoolean)
  {
    return ((Boolean)a(paramString, Boolean.class, Boolean.valueOf(paramBoolean))).booleanValue();
  }
  
  protected void c(String paramString)
  {
    synchronized (this.f)
    {
      Iterator localIterator = this.f.iterator();
      if (localIterator.hasNext()) {
        ((m)localIterator.next()).onSharedPreferenceChanged(this, paramString);
      }
    }
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer;
    synchronized (this.a)
    {
      if (!this.d.get()) {
        b();
      }
      localStringBuffer = new StringBuffer();
      localStringBuffer.append("{ PreferencesStorage: \n");
      Iterator localIterator = this.a.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuffer.append("   " + (String)localEntry.getKey() + ": " + localEntry.getValue() + "\n");
      }
    }
    localStringBuffer.append("}");
    String str = localStringBuffer.toString();
    return str;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.a
 * JD-Core Version:    0.7.0.1
 */