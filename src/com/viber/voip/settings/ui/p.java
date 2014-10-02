package com.viber.voip.settings.ui;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class p
  implements Preference.OnPreferenceClickListener
{
  p(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    this.a.startActivity(new Intent("com.viber.voip.action.ENTER_DETAILS_SCREEN"));
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.p
 * JD-Core Version:    0.7.0.1
 */