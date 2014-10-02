package com.viber.voip.settings.ui;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.widget.FrameLayout;
import com.viber.voip.ViberApplication;

class ao
  implements Preference.OnPreferenceClickListener
{
  ao(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    ViberApplication.getInstance().getPromoHandler().a(this.a.getActivity(), (FrameLayout)this.a.getView(), null);
    ViberApplication.getInstance().getPromoHandler().b(true);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.ao
 * JD-Core Version:    0.7.0.1
 */