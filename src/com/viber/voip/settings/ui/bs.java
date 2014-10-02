package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.settings.j;

class bs
  implements Runnable
{
  bs(bj parambj, String paramString) {}
  
  public void run()
  {
    this.b.a(a.i.l(true), a.i.l(false), j.Z(), this.a);
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.b.e.findPreference(this.a);
    if ((localCheckBoxPreference != null) && (!localCheckBoxPreference.isEnabled())) {
      this.b.a(j.Y()).setEnabled(true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bs
 * JD-Core Version:    0.7.0.1
 */