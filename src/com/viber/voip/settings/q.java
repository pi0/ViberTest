package com.viber.voip.settings;

import android.content.Context;
import java.util.Map;
import java.util.Set;

public class q
  implements l
{
  private static final String a = q.class.getSimpleName();
  private h b;
  
  public q(Context paramContext)
  {
    this.b = PreferencesContentProvider.a(paramContext);
  }
  
  public l a()
  {
    throw new UnsupportedOperationException("unmplemented");
  }
  
  public l a(String paramString)
  {
    throw new UnsupportedOperationException("unmplemented");
  }
  
  public l a(String paramString, float paramFloat)
  {
    this.b.b(paramString, paramFloat);
    return this;
  }
  
  public l a(String paramString, int paramInt)
  {
    this.b.b(paramString, paramInt);
    return this;
  }
  
  public l a(String paramString, long paramLong)
  {
    this.b.b(paramString, paramLong);
    return this;
  }
  
  public l a(String paramString1, String paramString2)
  {
    this.b.b(paramString1, paramString2);
    return this;
  }
  
  public l a(String paramString, boolean paramBoolean)
  {
    this.b.b(paramString, paramBoolean);
    return this;
  }
  
  public l a(Set<String> paramSet)
  {
    throw new UnsupportedOperationException("unmplemented");
  }
  
  public void a(m paramm)
  {
    throw new UnsupportedOperationException("unmplemented");
  }
  
  public float b(String paramString, float paramFloat)
  {
    return this.b.a(paramString, paramFloat);
  }
  
  public int b(String paramString, int paramInt)
  {
    return this.b.a(paramString, paramInt);
  }
  
  public long b(String paramString, long paramLong)
  {
    return this.b.a(paramString, paramLong);
  }
  
  public String b(String paramString1, String paramString2)
  {
    return this.b.a(paramString1, paramString2);
  }
  
  public Map<String, ? extends Object> b()
  {
    throw new UnsupportedOperationException("unmplemented");
  }
  
  public void b(m paramm)
  {
    throw new UnsupportedOperationException("unmplemented");
  }
  
  public boolean b(String paramString)
  {
    return this.b.a(paramString);
  }
  
  public boolean b(String paramString, boolean paramBoolean)
  {
    return this.b.a(paramString, paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.q
 * JD-Core Version:    0.7.0.1
 */