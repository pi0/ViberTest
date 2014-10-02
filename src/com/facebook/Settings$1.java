package com.facebook;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class Settings$1
  implements ThreadFactory
{
  private final AtomicInteger counter = new AtomicInteger(0);
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "FacebookSdk #" + this.counter.incrementAndGet());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.Settings.1
 * JD-Core Version:    0.7.0.1
 */