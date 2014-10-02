package com.viber.voip.settings.ui;

import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.viber.voip.ViberApplication;

class at
  implements Preference.OnPreferenceChangeListener
{
  at(j paramj, ListPreference paramListPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    ViberApplication.getInstance().showToast("Device type changed to " + paramObject.toString());
    this.a.setSummary("Current device type : " + paramObject.toString());
    j.a(this.b);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.at
 * JD-Core Version:    0.7.0.1
 */