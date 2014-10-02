package com.viber.voip.util;

import android.app.ActivityManager;
import android.content.Context;
import android.support.v4.util.LruCache;

public abstract class fd<K, V>
  extends LruCache<K, V>
{
  private static final String a = fd.class.getSimpleName();
  private String b;
  
  public fd(Context paramContext, String paramString, float paramFloat)
  {
    super(a(paramContext, paramString, paramFloat));
    this.b = paramString;
  }
  
  public fd(Context paramContext, String paramString, float paramFloat1, float paramFloat2)
  {
    super(a(paramContext, paramString, paramFloat1, paramFloat2));
    this.b = paramString;
  }
  
  private static int a(Context paramContext, String paramString, float paramFloat)
  {
    return a(paramContext, paramString, paramFloat, -1.0F);
  }
  
  private static int a(Context paramContext, String paramString, float paramFloat1, float paramFloat2)
  {
    int i = ((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass();
    if ((paramFloat2 != -1.0F) && (a(i))) {}
    for (;;)
    {
      return (int)(paramFloat2 * (i * 1048576));
      paramFloat2 = paramFloat1;
    }
  }
  
  private static boolean a(int paramInt)
  {
    return paramInt < 64;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.fd
 * JD-Core Version:    0.7.0.1
 */