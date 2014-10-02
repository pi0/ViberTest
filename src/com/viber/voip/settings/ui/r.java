package com.viber.voip.settings.ui;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.voip.registration.SelectCountryActivity;

class r
  implements Preference.OnPreferenceClickListener
{
  r(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    Intent localIntent = new Intent(this.a.getActivity(), SelectCountryActivity.class).addFlags(268435456);
    this.a.startActivity(localIntent);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.r
 * JD-Core Version:    0.7.0.1
 */