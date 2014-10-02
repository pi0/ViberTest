package com.viber.voip.settings.ui;

import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.preference.Preference;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.messages.i;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class bb
  extends bv
{
  private i b;
  
  public bb()
  {
    super(2131034121);
  }
  
  public static void a(l paraml)
  {
    paraml.a(j.ac(), j.ad());
    paraml.a(j.ae(), j.af());
  }
  
  public void a() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(j.al()).setOnPreferenceClickListener(this);
    this.b = ViberApplication.getInstance().getMessagesManager();
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    super.onPreferenceClick(paramPreference);
    if (j.al().equals(paramPreference.getKey()))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
      localBuilder.setTitle(2131494282).setMessage(2131494361);
      localBuilder.setPositiveButton(2131494283, new bc(this));
      localBuilder.setNegativeButton(2131494284, new be(this));
      localBuilder.show();
      return false;
    }
    return true;
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    super.onSharedPreferenceChanged(paraml, paramString);
    if (paramString.equals(j.ac())) {
      a(a.i.m(true), a.i.m(false), j.ad(), paramString);
    }
    while (!paramString.equals(j.ae())) {
      return;
    }
    a(a.i.n(true), a.i.n(false), j.af(), paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.bb
 * JD-Core Version:    0.7.0.1
 */