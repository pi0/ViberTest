package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.viberout.e;

class ab
  implements Preference.OnPreferenceClickListener
{
  ab(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    e.c().a("com.viber.voip.action.vo_promotion_no_free_call");
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.ab
 * JD-Core Version:    0.7.0.1
 */