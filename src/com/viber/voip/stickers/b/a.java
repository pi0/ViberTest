package com.viber.voip.stickers.b;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;

public abstract class a
{
  private static final String b = a.class.getSimpleName();
  protected com.viber.voip.stickers.d.b a = new b(this);
  private Handler c = dc.a(dk.a);
  private com.viber.voip.stickers.d.b d;
  
  public a(com.viber.voip.stickers.d.b paramb)
  {
    this.d = paramb;
  }
  
  protected static void a(String paramString) {}
  
  protected static void a(String paramString, Throwable paramThrowable) {}
  
  public abstract void a(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.b.a
 * JD-Core Version:    0.7.0.1
 */