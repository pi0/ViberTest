package com.viber.voip.util.b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class b
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "AsyncTask #" + this.a.getAndIncrement());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.b
 * JD-Core Version:    0.7.0.1
 */