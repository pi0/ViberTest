package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class k
  implements Preference.OnPreferenceClickListener
{
  k(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    ViberApplication.preferences().a("gallery_coach_show");
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.k
 * JD-Core Version:    0.7.0.1
 */