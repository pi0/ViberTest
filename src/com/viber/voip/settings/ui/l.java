package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;

class l
  implements Preference.OnPreferenceClickListener
{
  l(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    ViberApplication.preferences().a(com.viber.voip.settings.j.am());
    ViberApplication.preferences().a("pref_ptt_autoclean_dirsize_key");
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.l
 * JD-Core Version:    0.7.0.1
 */