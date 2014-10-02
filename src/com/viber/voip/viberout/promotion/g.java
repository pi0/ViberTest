package com.viber.voip.viberout.promotion;

import android.os.Message;

abstract class g
  extends com.android.a.a.a
{
  g(b paramb) {}
  
  protected void a()
  {
    this.b.a(c() + " enter");
  }
  
  protected boolean a(Message paramMessage)
  {
    return a(a.values()[paramMessage.what]);
  }
  
  protected boolean a(a parama)
  {
    return false;
  }
  
  protected void b()
  {
    this.b.a(c() + " exit");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.g
 * JD-Core Version:    0.7.0.1
 */