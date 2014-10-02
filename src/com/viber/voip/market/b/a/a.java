package com.viber.voip.market.b.a;

import com.viber.voip.stickers.c.f;

public class a
  implements f
{
  private f a;
  private int b;
  private int c;
  
  public a(f paramf)
  {
    this.a = paramf;
    this.b = this.a.b();
    this.c = this.a.a();
  }
  
  public int a()
  {
    return this.c;
  }
  
  public void a(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void a(f paramf)
  {
    this.a = paramf;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 0;; i = 1)
    {
      this.b = i;
      return;
    }
  }
  
  public int b()
  {
    return this.b;
  }
  
  public boolean c()
  {
    return this.b == 0;
  }
  
  public boolean d()
  {
    return (this.a.a() != this.c) || (this.a.b() != this.b);
  }
  
  public int e()
  {
    return this.a.e();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    a locala;
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        locala = (a)paramObject;
        if (this.a != null) {
          break;
        }
      } while (locala.a == null);
      return false;
    } while (this.a.equals(locala.a));
    return false;
  }
  
  public String f()
  {
    return this.a.f();
  }
  
  public int hashCode()
  {
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return i + 31;
    }
  }
  
  public String toString()
  {
    return "StickerPackageSortable [getId()=" + e() + ", getPackageName()=" + f() + ", mVisibility=" + this.b + "[origin=" + this.a.b() + "], mMenuPosition=" + this.c + "[origin=" + this.a.a() + "]]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.b.a.a
 * JD-Core Version:    0.7.0.1
 */