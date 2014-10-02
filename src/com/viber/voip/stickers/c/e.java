package com.viber.voip.stickers.c;

import com.viber.voip.util.bk;
import com.viber.voip.w;
import java.util.ArrayList;

public class e
  implements d
{
  private final int a;
  private String b;
  private ArrayList<a> c;
  private int d;
  private float e;
  private int f;
  private int g;
  private boolean h;
  
  public e(int paramInt, String paramString)
  {
    this.a = paramInt;
    a(paramString);
    a(new ArrayList());
  }
  
  public static String d(int paramInt)
  {
    return w.w + paramInt + "/" + "icon.png";
  }
  
  public static String e(int paramInt)
  {
    return w.w + paramInt + "/" + "color_icon.png";
  }
  
  public int a()
  {
    return this.f;
  }
  
  public void a(float paramFloat)
  {
    this.e = paramFloat;
  }
  
  public void a(int paramInt)
  {
    this.d = paramInt;
  }
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public void a(ArrayList<a> paramArrayList)
  {
    this.c = paramArrayList;
  }
  
  public void a(boolean paramBoolean)
  {
    this.d = bk.a(this.d, 1, paramBoolean);
  }
  
  public int b()
  {
    return this.g;
  }
  
  public void b(int paramInt)
  {
    this.f = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    this.d = bk.a(this.d, 2, paramBoolean);
  }
  
  public void c(int paramInt)
  {
    this.g = paramInt;
  }
  
  public void c(boolean paramBoolean)
  {
    this.d = bk.a(this.d, 3, paramBoolean);
  }
  
  public boolean c()
  {
    return this.g == 0;
  }
  
  public void d(boolean paramBoolean)
  {
    this.d = bk.a(this.d, 4, paramBoolean);
  }
  
  public boolean d()
  {
    return (bk.a(this.d, new int[] { 1 })) && (!i());
  }
  
  public int e()
  {
    return this.a;
  }
  
  public void e(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    e locale;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      locale = (e)paramObject;
    } while (this.a == locale.a);
    return false;
  }
  
  public String f()
  {
    return this.b;
  }
  
  public boolean g()
  {
    return (h()) || (j()) || (i());
  }
  
  public boolean h()
  {
    return bk.a(this.d, new int[] { 2 });
  }
  
  public int hashCode()
  {
    return 31 + this.a;
  }
  
  public boolean i()
  {
    return e() == 400;
  }
  
  public boolean j()
  {
    return bk.a(this.d, new int[] { 3 });
  }
  
  public boolean k()
  {
    return bk.a(this.d, new int[] { 4 });
  }
  
  public float l()
  {
    return this.e;
  }
  
  public int m()
  {
    return this.d;
  }
  
  public String toString()
  {
    return "StickerPackage [id=" + e() + ", packageName=" + f() + ", flags=" + this.d + ", thumbFactor=" + this.e + ", menuPosition=" + this.f + ", visibility=" + this.g + ", isInDatabase=" + this.h + ", isVisible()=" + c() + ", isNewPackage()=" + d() + ", isCanBeOrdered()=" + g() + ", isDeployed()=" + h() + ", isOnBoard()=" + i() + ", isPromo()=" + j() + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.c.e
 * JD-Core Version:    0.7.0.1
 */