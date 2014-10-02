package com.viber.voip.stickers;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.c.e;
import com.viber.voip.stickers.e.h;

public abstract class a
  extends al
{
  private final int a;
  private final String b;
  private h c;
  
  public a(int paramInt, String paramString)
  {
    this.a = paramInt;
    this.b = paramString;
    this.c = new h(ViberApplication.getInstance());
  }
  
  private Bitmap b()
  {
    return BitmapFactory.decodeFile(e.d(this.a));
  }
  
  public void a()
  {
    this.c.a(this.a, this.b);
  }
  
  protected abstract void a(int paramInt);
  
  public void a(d paramd, int paramInt)
  {
    if (paramd.e() != this.a) {
      return;
    }
    if (paramInt < 100)
    {
      this.c.a(this.a, paramInt, this.b, b());
      return;
    }
    this.c.c(this.a, this.b, b());
  }
  
  public void a(boolean paramBoolean, d paramd)
  {
    if (paramd.e() != this.a) {
      return;
    }
    this.c.b(this.a, this.b, b());
    b(this.a);
  }
  
  protected abstract void b(int paramInt);
  
  public void c(d paramd)
  {
    if (paramd.e() != this.a) {
      return;
    }
    this.c.a(paramd.e(), this.b, b());
    a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.a
 * JD-Core Version:    0.7.0.1
 */