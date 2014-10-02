package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.v;
import com.viber.voip.settings.l;

class o
  implements Preference.OnPreferenceClickListener
{
  o(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool = ((CheckBoxPreference)paramPreference).isChecked();
    ViberApplication.preferences().a("proximity_disable_white_list", bool);
    ViberApplication.getInstance().getPhoneApp().g();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.o
 * JD-Core Version:    0.7.0.1
 */