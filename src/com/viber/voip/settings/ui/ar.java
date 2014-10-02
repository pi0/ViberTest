package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;

class ar
  implements Preference.OnPreferenceClickListener
{
  ar(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    ViberApplication.exit(this.a.getActivity(), true);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.ar
 * JD-Core Version:    0.7.0.1
 */