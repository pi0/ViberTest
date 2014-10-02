package com.viber.voip.settings.ui;

import android.content.ContentResolver;
import android.net.Uri;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.v4.app.FragmentActivity;

class u
  implements Preference.OnPreferenceClickListener
{
  u(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    Uri localUri = Uri.parse("content://com.viber.provider.vibercontacts/method/copyDB");
    this.a.getActivity().getContentResolver().query(localUri, null, null, null, null);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.u
 * JD-Core Version:    0.7.0.1
 */