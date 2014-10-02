package com.viber.voip.settings.ui;

import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.an;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import java.util.Locale;

public class ax
  extends bv
{
  public ax()
  {
    super(2131034120);
  }
  
  public static void a(l paraml)
  {
    paraml.a(j.R(), j.X());
    paraml.a(j.y(), j.z());
    paraml.a(j.S(), j.T());
    paraml.a(j.t(), j.u());
  }
  
  private void b()
  {
    PreferenceScreen localPreferenceScreen = d();
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = getString(2131493866);
    arrayOfString1[1] = getString(2131493868);
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = getString(2131493867);
    arrayOfString2[1] = getString(2131493869);
    ba localba = new ba(getActivity());
    if ("ara".equals(Locale.getDefault().getISO3Language())) {
      localba.setLayoutResource(2130903236);
    }
    for (;;)
    {
      localba.setKey(j.E());
      localba.setEntries(arrayOfString1);
      localba.setEntryValues(arrayOfString1);
      localba.a(arrayOfString2);
      localba.setDialogTitle(2131493865);
      localba.setTitle(2131493865);
      localba.setDefaultValue(arrayOfString1[0]);
      localPreferenceScreen.addPreference(localba);
      localba.setOnPreferenceChangeListener(new ay(this));
      return;
      localba.setLayoutResource(2130903059);
    }
  }
  
  public void a()
  {
    com.viber.service.contacts.sync.a.a().d();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b();
    if (!dj.e()) {
      d().removePreference(a(j.R()));
    }
    d().removePreference(a(j.S()));
    a(j.G()).setOnPreferenceClickListener(this);
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    super.onPreferenceClick(paramPreference);
    if (j.G().equals(paramPreference.getKey())) {
      ViberApplication.exit(getActivity(), true);
    }
    return true;
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    super.onSharedPreferenceChanged(paraml, paramString);
    if (paramString.equals(j.y())) {
      a(com.viber.voip.a.a.i.i(true), com.viber.voip.a.a.i.i(false), j.z(), paramString);
    }
    do
    {
      return;
      if (paramString.equals(j.t()))
      {
        a(com.viber.voip.a.a.i.b(true), com.viber.voip.a.a.i.b(false), j.u(), paramString);
        return;
      }
      if (paramString.equals(j.R()))
      {
        com.viber.service.contacts.sync.a.a().d();
        return;
      }
    } while (!paramString.equals(j.G()));
    a(com.viber.voip.a.a.i.k(true), com.viber.voip.a.a.i.k(false), j.H().booleanValue(), paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.ax
 * JD-Core Version:    0.7.0.1
 */