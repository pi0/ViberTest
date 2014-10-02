package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.widget.Toast;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import com.viber.voip.viberout.e;

class ah
  implements Preference.OnPreferenceChangeListener
{
  ah(j paramj, String[] paramArrayOfString) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    e.a();
    Toast.makeText(this.b.getActivity(), "Viber out trial prefs have been reset", 0).show();
    int i = 0;
    if (i < this.a.length) {
      if (!this.a[i].equals(paramObject)) {}
    }
    for (;;)
    {
      ViberApplication.log(3, "Settings", "changed VO installation type: " + this.a[i]);
      switch (i)
      {
      }
      for (;;)
      {
        ViberApplication.exit(this.b.getActivity(), false);
        return true;
        i++;
        break;
        ViberApplication.preferences().a("PREF_VO_MANUAL_EXPOSURE_ENABLED", false);
        ViberApplication.preferences().a("vo_exposure", 0);
        continue;
        ViberApplication.preferences().a("PREF_VO_MANUAL_EXPOSURE_ENABLED", true);
        ViberApplication.preferences().a("vo_exposure", 1);
        continue;
        ViberApplication.preferences().a("PREF_VO_MANUAL_EXPOSURE_ENABLED", true);
        ViberApplication.preferences().a("vo_exposure", 2);
      }
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.ah
 * JD-Core Version:    0.7.0.1
 */