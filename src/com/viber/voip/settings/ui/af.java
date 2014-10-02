package com.viber.voip.settings.ui;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class af
  implements Preference.OnPreferenceClickListener
{
  af(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CORRUPTED_UPGRADE_DIALOG");
    localIntent.setFlags(268435456);
    this.a.startActivity(localIntent);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.af
 * JD-Core Version:    0.7.0.1
 */