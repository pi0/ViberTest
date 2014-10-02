package com.viber.voip.settings.ui;

import android.preference.Preference;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.fb.ah;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.settings.j;

class bu
  implements Runnable
{
  bu(bj parambj) {}
  
  public void run()
  {
    s locals = ViberApplication.getInstance().getFacebookManager();
    String str1 = locals.f();
    Preference localPreference = this.a.a(j.f());
    if (locals.b() != ah.d) {}
    for (String str2 = this.a.getString(2131494110, new Object[] { str1 });; str2 = this.a.getString(2131493968))
    {
      localPreference.setSummary(str2);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bu
 * JD-Core Version:    0.7.0.1
 */