package com.viber.voip.stickers;

import com.viber.voip.stickers.a.a;
import com.viber.voip.stickers.c.e;

class ah
  implements Runnable
{
  ah(r paramr, int paramInt) {}
  
  public void run()
  {
    e locale = (e)this.b.b(this.a);
    if ((locale != null) && (locale.h()) && (locale.d()))
    {
      locale.a(false);
      r.a(this.b).a(locale);
      r.a(this.b, true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ah
 * JD-Core Version:    0.7.0.1
 */