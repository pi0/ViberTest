package com.viber.voip.c;

import android.content.Context;
import java.util.concurrent.Semaphore;

class c
  implements Runnable
{
  c(b paramb, Context paramContext) {}
  
  public void run()
  {
    try
    {
      b.a(this.b, this.a);
      return;
    }
    finally
    {
      b.a(this.b).release();
      b.b(this.b);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.c.c
 * JD-Core Version:    0.7.0.1
 */