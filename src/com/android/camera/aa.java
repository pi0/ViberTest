package com.android.camera;

import android.app.ProgressDialog;
import android.os.Handler;

class aa
  extends w
  implements Runnable
{
  private final MonitoredActivity a;
  private final ProgressDialog b;
  private final Runnable c;
  private final Handler d;
  private final Runnable e = new ab(this);
  
  public aa(MonitoredActivity paramMonitoredActivity, Runnable paramRunnable, ProgressDialog paramProgressDialog, Handler paramHandler)
  {
    this.a = paramMonitoredActivity;
    this.b = paramProgressDialog;
    this.c = paramRunnable;
    this.a.a(this);
    this.d = paramHandler;
  }
  
  public void b(MonitoredActivity paramMonitoredActivity)
  {
    this.e.run();
    this.d.removeCallbacks(this.e);
  }
  
  public void c(MonitoredActivity paramMonitoredActivity)
  {
    this.b.show();
  }
  
  public void d(MonitoredActivity paramMonitoredActivity)
  {
    this.b.hide();
  }
  
  public void run()
  {
    try
    {
      this.c.run();
      return;
    }
    finally
    {
      this.d.post(this.e);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.aa
 * JD-Core Version:    0.7.0.1
 */