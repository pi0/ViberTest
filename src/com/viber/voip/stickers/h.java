package com.viber.voip.stickers;

import android.graphics.Bitmap;

public class h
{
  private int a;
  private Bitmap b;
  private String c;
  private int d;
  
  public h(Bitmap paramBitmap, String paramString)
  {
    this.c = paramString;
    this.b = paramBitmap;
    this.d = com.viber.voip.messages.extras.image.h.d(paramBitmap);
  }
  
  public Bitmap a()
  {
    return this.b;
  }
  
  public void b()
  {
    this.a = (1 + this.a);
  }
  
  public int c()
  {
    return this.d;
  }
  
  public void d()
  {
    this.a = (-1 + this.a);
    if ((this.b != null) && (this.a <= 0))
    {
      com.viber.voip.messages.extras.image.h.c(this.b);
      this.b = null;
    }
  }
  
  public String toString()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.h
 * JD-Core Version:    0.7.0.1
 */