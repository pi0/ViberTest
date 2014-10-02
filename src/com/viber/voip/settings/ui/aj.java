package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class aj
  implements Preference.OnPreferenceClickListener
{
  aj(j paramj, String paramString) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool = ((CheckBoxPreference)paramPreference).isChecked();
    ViberApplication.preferences().a(this.a, bool);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.aj
 * JD-Core Version:    0.7.0.1
 */