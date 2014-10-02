package com.viber.voip.messages.extras.a;

import android.text.TextUtils;

class ab
  implements Runnable
{
  ab(e parame, double paramDouble1, double paramDouble2, boolean paramBoolean, c paramc) {}
  
  public void run()
  {
    d locald = this.e.a(this.a, this.b);
    if (TextUtils.isEmpty(locald.b))
    {
      new com.viber.voip.messages.extras.map.d(null, null).a(this.a, this.b, new ac(this));
      return;
    }
    if (this.c)
    {
      e.a(this.e, locald.a, locald.b, this.d);
      return;
    }
    this.d.a(locald.a, locald.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.ab
 * JD-Core Version:    0.7.0.1
 */