package com.viber.voip.phone.call.a;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.util.fr;
import java.util.List;

class h
  implements Runnable
{
  private fr b = new fr(dc.a(dk.f), this, 1000L);
  
  private h(f paramf) {}
  
  public void a()
  {
    this.b.a();
  }
  
  public void b()
  {
    this.b.b();
  }
  
  public boolean c()
  {
    List localList = ViberApplication.getInstance().getActivityManager().getRunningTasks(1);
    if ((localList != null) && (!localList.isEmpty()))
    {
      ActivityManager.RunningTaskInfo localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localList.get(0);
      if (localRunningTaskInfo != null) {
        return localRunningTaskInfo.topActivity.getClassName().equals(PhoneActivity.class.getCanonicalName());
      }
    }
    return false;
  }
  
  public void run()
  {
    if (!c()) {
      f.a(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.call.a.h
 * JD-Core Version:    0.7.0.1
 */