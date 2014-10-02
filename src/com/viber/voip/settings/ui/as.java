package com.viber.voip.settings.ui;

import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class as
  implements Preference.OnPreferenceChangeListener
{
  as(j paramj, ListPreference paramListPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    ViberApplication.getInstance().showToast("sever config changed to " + paramObject.toString());
    this.a.setSummary("Current server type : " + paramObject.toString());
    ViberApplication.preferences().a(com.viber.voip.settings.j.B(), paramObject.toString());
    j.a(this.b);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.as
 * JD-Core Version:    0.7.0.1
 */