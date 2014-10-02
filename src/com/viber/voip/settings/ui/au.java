package com.viber.voip.settings.ui;

import android.content.SharedPreferences.Editor;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

class au
  implements Preference.OnPreferenceChangeListener
{
  au(j paramj) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    try
    {
      paramPreference.getEditor().putLong(paramPreference.getKey(), Long.parseLong(paramObject.toString())).commit();
      label26:
      return false;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      break label26;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.au
 * JD-Core Version:    0.7.0.1
 */