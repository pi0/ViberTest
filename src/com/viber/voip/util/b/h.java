package com.viber.voip.util.b;

import android.annotation.TargetApi;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

@TargetApi(11)
class h
  implements Executor
{
  final ArrayDeque<Runnable> a = new ArrayDeque();
  Runnable b;
  
  protected void a()
  {
    try
    {
      Runnable localRunnable = (Runnable)this.a.poll();
      this.b = localRunnable;
      if (localRunnable != null) {
        a.b.execute(this.b);
      }
      return;
    }
    finally {}
  }
  
  public void execute(Runnable paramRunnable)
  {
    try
    {
      this.a.offer(new i(this, paramRunnable));
      if (this.b == null) {
        a();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.h
 * JD-Core Version:    0.7.0.1
 */