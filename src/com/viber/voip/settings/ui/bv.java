package com.viber.voip.settings.ui;

import android.app.Activity;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceScreen;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.x;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;

public abstract class bv
  extends bg
  implements Preference.OnPreferenceClickListener, m
{
  protected Activity d;
  PreferenceScreen e = null;
  l f = null;
  
  public bv(int paramInt)
  {
    super(paramInt);
  }
  
  protected static void a(String paramString) {}
  
  public abstract void a();
  
  protected void a(x paramx1, x paramx2, boolean paramBoolean, String paramString)
  {
    boolean bool = this.f.b(paramString, paramBoolean);
    bc localbc = bc.a();
    if (bool) {}
    for (;;)
    {
      localbc.a(paramx1);
      Preference localPreference = a(paramString);
      if ((localPreference instanceof CheckBoxPreference))
      {
        CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)localPreference;
        if (localCheckBoxPreference != null) {
          localCheckBoxPreference.setChecked(bool);
        }
      }
      return;
      paramx1 = paramx2;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d = getActivity();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e = d();
    this.f = ViberApplication.preferences();
    this.e.setOnPreferenceClickListener(this);
  }
  
  public void onPause()
  {
    super.onPause();
    a("onPause");
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    a("onPreferenceClick preference:" + paramPreference.getKey());
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    a("onResume");
    this.f.a(this);
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    a("onPreferencesStorageChanged key:" + paramString + ", value:" + paraml.b(paramString, ""));
  }
  
  public void onStop()
  {
    super.onStop();
    a("onStop");
    this.f.b(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bv
 * JD-Core Version:    0.7.0.1
 */