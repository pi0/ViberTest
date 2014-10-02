package com.viber.voip.phone;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.g.a;
import java.util.List;

class m
  implements Runnable
{
  private m(i parami) {}
  
  public void a()
  {
    dc.a(dk.a).postDelayed(this, 1000L);
  }
  
  public void run()
  {
    synchronized (i.i(this.a))
    {
      String str = ((ActivityManager.RunningTaskInfo)i.j(this.a).getRunningTasks(1).get(0)).topActivity.getClassName();
      if ((!str.equals(PhoneActivity.class.getName())) && (!str.equals(PhoneFragmentActivity.class.getName())) && (!str.equals("com.viber.voip.phone.PhoneActivityFromBackground")))
      {
        if (!str.equals(VideoCallActivity.class.getName())) {
          i.k(this.a);
        }
        i.l(this.a).a(false);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.m
 * JD-Core Version:    0.7.0.1
 */