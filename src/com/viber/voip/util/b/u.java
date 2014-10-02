package com.viber.voip.util.b;

import android.content.Context;
import android.graphics.Bitmap.CompressFormat;
import java.io.File;

public class u
{
  public int a = 5120;
  public int b = 10485760;
  public File c;
  public Bitmap.CompressFormat d = s.f();
  public int e = 70;
  public boolean f = true;
  public boolean g = true;
  public boolean h = false;
  
  public u(Context paramContext, String paramString)
  {
    this.c = s.a(paramContext, paramString);
  }
  
  public void a(float paramFloat)
  {
    if ((paramFloat < 0.01F) || (paramFloat > 0.8F)) {
      throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)");
    }
    this.a = Math.round(paramFloat * (float)Runtime.getRuntime().maxMemory() / 1024.0F);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.u
 * JD-Core Version:    0.7.0.1
 */