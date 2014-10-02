package com.facebook;

import android.content.Context;
import com.viber.voip.ViberApplication;

final class Settings$2
  implements Runnable
{
  Settings$2(Context paramContext, String paramString) {}
  
  public void run()
  {
    if (Settings.publishInstallAndWait(this.val$applicationContext, this.val$applicationId)) {
      ViberApplication.log(3, "Settings", "com.facebook.Settings.publishInstallAsync app id=" + this.val$applicationId);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.Settings.2
 * JD-Core Version:    0.7.0.1
 */