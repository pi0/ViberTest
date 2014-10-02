package com.viber.voip.util.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.viber.voip.util.b.b.a;
import com.viber.voip.util.b.b.c;
import com.viber.voip.util.b.b.d;
import com.viber.voip.util.b.b.e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class x
{
  private static Map<Integer, Bitmap> l = new ConcurrentHashMap();
  final Bitmap a;
  final Bitmap b;
  final boolean c;
  final boolean d;
  final boolean e;
  final boolean f;
  final boolean g;
  final l h;
  final aa i;
  private final int j;
  private final int k;
  
  private x(z paramz)
  {
    this.a = z.a(paramz);
    this.b = z.b(paramz);
    this.c = z.c(paramz);
    this.d = z.d(paramz);
    this.e = z.e(paramz);
    this.f = z.f(paramz);
    this.g = z.g(paramz);
    this.i = z.h(paramz);
    this.j = z.i(paramz);
    this.k = z.j(paramz);
    this.h = z.k(paramz);
  }
  
  public static x a()
  {
    return new z().b();
  }
  
  public static x a(int paramInt1, int paramInt2)
  {
    c localc = new c();
    localc.a(new e(paramInt1, paramInt2)).a(new d(paramInt1, paramInt2));
    return new z().a(localc).c(false).b();
  }
  
  public static x a(Context paramContext)
  {
    return new z().a(2130838218, paramContext).b(2130838218, paramContext).a(aa.b).b();
  }
  
  public static x a(Context paramContext, int paramInt, aa paramaa, boolean paramBoolean)
  {
    return new z().a(paramInt, paramContext).b(paramInt, paramContext).a(paramaa).b(paramBoolean).b();
  }
  
  public static x b(Context paramContext)
  {
    return new z().a(aa.a).b(2130838233, paramContext).a(2130838233, paramContext).a(new a()).b();
  }
  
  public static x c(Context paramContext)
  {
    return new z().a(true).b(2130837615, paramContext).b();
  }
  
  public static x d(Context paramContext)
  {
    return new z().a(true).a(2130837615, paramContext).b(2130837615, paramContext).b();
  }
  
  public z b()
  {
    z localz = new z();
    z.a(localz, this.a);
    z.b(localz, this.b);
    z.a(localz, this.c);
    z.b(localz, this.d);
    z.c(localz, this.f);
    z.d(localz, this.e);
    z.a(localz, this.i);
    z.a(localz, this.j);
    z.b(localz, this.k);
    z.a(localz, this.h);
    return localz;
  }
  
  int e(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    switch (y.a[this.i.ordinal()])
    {
    default: 
      return -1;
    case 1: 
      return localResources.getDimensionPixelSize(2131362344);
    case 2: 
      return localResources.getDimensionPixelSize(2131362345);
    }
    return this.j;
  }
  
  int f(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    switch (y.a[this.i.ordinal()])
    {
    default: 
      return -1;
    case 1: 
      return localResources.getDimensionPixelSize(2131362344);
    case 2: 
      return localResources.getDimensionPixelSize(2131362345);
    }
    return this.k;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.x
 * JD-Core Version:    0.7.0.1
 */