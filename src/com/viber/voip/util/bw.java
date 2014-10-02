package com.viber.voip.util;

import android.os.Handler;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import java.util.LinkedList;
import java.util.Queue;

public class bw
{
  private static bw e;
  private boolean a;
  private boolean b;
  private Object c = new Object();
  private Queue<bz> d = new LinkedList();
  
  private bw()
  {
    ViberApplication.getInstance().getPhoneController(false).addReadyListener(new bx(this));
  }
  
  public static bw a()
  {
    if (e == null) {}
    try
    {
      if (e == null) {
        e = new bw();
      }
      return e;
    }
    finally {}
  }
  
  private void a(long paramLong)
  {
    synchronized (this.c)
    {
      if (this.a != true)
      {
        bz localbz = (bz)this.d.poll();
        if (localbz != null) {
          bz.b(localbz).postDelayed(new by(this, localbz), paramLong);
        }
      }
      else
      {
        return;
      }
      this.b = true;
    }
  }
  
  private void b()
  {
    synchronized (this.c)
    {
      a(100L);
      return;
    }
  }
  
  public void a(Handler paramHandler, Runnable paramRunnable)
  {
    bz localbz = new bz(this, paramHandler, paramRunnable);
    synchronized (this.c)
    {
      this.d.add(localbz);
      if (this.b)
      {
        this.b = false;
        a(100L);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bw
 * JD-Core Version:    0.7.0.1
 */