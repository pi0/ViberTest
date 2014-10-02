package com.viber.voip.util.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.util.Map;

public class z
{
  private Bitmap a;
  private Bitmap b;
  private boolean c = false;
  private boolean d = true;
  private boolean e = true;
  private boolean f = true;
  private boolean g = false;
  private aa h = aa.d;
  private int i;
  private int j;
  private l k;
  
  private static Bitmap c(int paramInt, Context paramContext)
  {
    Bitmap localBitmap = (Bitmap)x.c().get(Integer.valueOf(paramInt));
    if ((localBitmap == null) && (paramContext != null)) {}
    try
    {
      localBitmap = BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
      if (localBitmap != null) {
        x.c().put(Integer.valueOf(paramInt), localBitmap);
      }
      return localBitmap;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      System.gc();
    }
    return localBitmap;
  }
  
  public z a()
  {
    this.a = null;
    return this;
  }
  
  public z a(int paramInt1, int paramInt2)
  {
    this.h = aa.c;
    this.j = paramInt2;
    this.i = paramInt1;
    return this;
  }
  
  public z a(int paramInt, Context paramContext)
  {
    this.a = c(paramInt, paramContext);
    return this;
  }
  
  @Deprecated
  public z a(Bitmap paramBitmap)
  {
    this.b = paramBitmap;
    return this;
  }
  
  public z a(aa paramaa)
  {
    this.h = paramaa;
    return this;
  }
  
  public z a(l paraml)
  {
    this.k = paraml;
    return this;
  }
  
  public z a(boolean paramBoolean)
  {
    this.c = paramBoolean;
    return this;
  }
  
  public x b()
  {
    return new x(this, null);
  }
  
  public z b(int paramInt, Context paramContext)
  {
    this.b = c(paramInt, paramContext);
    return this;
  }
  
  public z b(boolean paramBoolean)
  {
    this.d = paramBoolean;
    return this;
  }
  
  public z c(boolean paramBoolean)
  {
    this.e = paramBoolean;
    return this;
  }
  
  public z d(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.z
 * JD-Core Version:    0.7.0.1
 */