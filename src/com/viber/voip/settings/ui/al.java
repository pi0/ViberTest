package com.viber.voip.settings.ui;

import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.j.a;

class al
  implements Preference.OnPreferenceChangeListener
{
  al(j paramj, String[] paramArrayOfString, ListPreference paramListPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    int i = 0;
    if (i < this.a.length) {
      if (!this.a[i].equals(paramObject)) {}
    }
    for (;;)
    {
      ViberApplication.log(3, "Settings", "changed VO installation type: " + this.a[i]);
      a.a().b(i);
      this.b.setSummary(this.a[i]);
      return true;
      i++;
      break;
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.al
 * JD-Core Version:    0.7.0.1
 */