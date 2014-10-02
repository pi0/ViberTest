package com.viber.voip.messages.ui.chathead;

import android.content.Context;
import android.os.Handler;

class ar
  implements Runnable
{
  private final Context b;
  private final long c;
  private final boolean d;
  private final boolean e;
  
  public ar(d paramd, Context paramContext, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramContext;
    this.c = paramLong;
    this.d = paramBoolean1;
    this.e = paramBoolean2;
  }
  
  public void run()
  {
    if (d.r(this.a))
    {
      d.a(this.a, this.b, this.c, this.d, this.e);
      return;
    }
    d.s(this.a).postDelayed(this, 100L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ar
 * JD-Core Version:    0.7.0.1
 */