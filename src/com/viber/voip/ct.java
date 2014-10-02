package com.viber.voip;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.settings.SettingsController;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

class ct
  implements DialogInterface.OnClickListener
{
  ct(SystemDialogActivity paramSystemDialogActivity, boolean paramBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = 1;
    ViberApplication.preferences().a("last_online_last_changed_time", System.currentTimeMillis());
    l locall = ViberApplication.preferences();
    String str = j.Y();
    SettingsController localSettingsController;
    if (!this.a)
    {
      int k = i;
      locall.a(str, k);
      localSettingsController = ViberApplication.getInstance().getPhoneController(i).getSettingsController();
      if (this.a) {
        break label91;
      }
    }
    for (;;)
    {
      localSettingsController.handleChangeLastOnlineSettings(i);
      this.b.a(paramDialogInterface);
      return;
      int m = 0;
      break;
      label91:
      int j = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ct
 * JD-Core Version:    0.7.0.1
 */