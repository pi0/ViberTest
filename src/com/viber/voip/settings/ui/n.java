package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.v;
import com.viber.voip.settings.l;

class n
  implements Preference.OnPreferenceClickListener
{
  n(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool = ((CheckBoxPreference)paramPreference).isChecked();
    ViberApplication.preferences().a("proximity_turn_off_screen", bool);
    ViberApplication.getInstance().getPhoneApp().g();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.n
 * JD-Core Version:    0.7.0.1
 */