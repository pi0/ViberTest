package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.v;

class ay
  implements Preference.OnPreferenceChangeListener
{
  ay(ax paramax) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    boolean bool = this.a.getString(2131493866).equals(paramObject.toString());
    ViberApplication.getInstance().getPhoneApp().a(bool);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.ay
 * JD-Core Version:    0.7.0.1
 */