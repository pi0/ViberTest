package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.viberout.a;
import com.viber.voip.viberout.e;

class ai
  implements Preference.OnPreferenceClickListener
{
  ai(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool = ((CheckBoxPreference)paramPreference).isChecked();
    e.c().f().a(bool);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.ai
 * JD-Core Version:    0.7.0.1
 */