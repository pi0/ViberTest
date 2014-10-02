package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.viberout.e;

class ad
  implements Preference.OnPreferenceClickListener
{
  ad(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    e.c().a("com.viber.voip.action.vo_promotion_contact_info");
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.ad
 * JD-Core Version:    0.7.0.1
 */