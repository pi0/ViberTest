package com.viber.voip.settings;

import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

public class o
  implements m
{
  protected SharedPreferences.OnSharedPreferenceChangeListener a;
  
  protected o(n paramn, SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    this.a = paramOnSharedPreferenceChangeListener;
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    this.a.onSharedPreferenceChanged(this.b, paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.o
 * JD-Core Version:    0.7.0.1
 */