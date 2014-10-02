package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

class g
  implements Runnable
{
  g(a parama, CheckBoxPreference paramCheckBoxPreference) {}
  
  public void run()
  {
    this.a.setChecked(ViberApplication.preferences().b(j.ao(), j.ap()));
    this.b.e.findPreference(j.ao()).setEnabled(true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.g
 * JD-Core Version:    0.7.0.1
 */