package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class v
  implements Preference.OnPreferenceClickListener
{
  v(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    ViberApplication.preferences().a("last_online_last_changed_time");
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.v
 * JD-Core Version:    0.7.0.1
 */