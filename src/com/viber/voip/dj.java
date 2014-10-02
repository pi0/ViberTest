package com.viber.voip;

import android.os.HandlerThread;
import android.os.Process;

class dj
  extends HandlerThread
{
  private final di a;
  private volatile int b = -1;
  
  public dj(di paramdi)
  {
    super(paramdi.c);
    this.a = paramdi;
  }
  
  public final di a()
  {
    return this.a;
  }
  
  public final int b()
  {
    return this.b;
  }
  
  protected void onLooperPrepared()
  {
    super.onLooperPrepared();
  }
  
  public void run()
  {
    this.b = Process.myTid();
    Process.setThreadPriority(this.b, this.a.f);
    super.run();
  }
  
  public void start()
  {
    setDaemon(this.a.e);
    super.start();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.dj
 * JD-Core Version:    0.7.0.1
 */