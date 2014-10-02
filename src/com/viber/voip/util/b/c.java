package com.viber.voip.util.b;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class c
  extends k<Params, Result>
{
  c(a parama)
  {
    super(null);
  }
  
  public Result call()
  {
    a.a(this.a).set(true);
    Process.setThreadPriority(10);
    return a.a(this.a, this.a.a(this.b));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.c
 * JD-Core Version:    0.7.0.1
 */