package com.viber.voip.settings.ui;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.ListPreference;

public class ba
  extends ListPreference
{
  private CharSequence[] a;
  
  public ba(Context paramContext)
  {
    super(paramContext);
  }
  
  public void a(String paramString)
  {
    if (callChangeListener(paramString))
    {
      SharedPreferences.Editor localEditor = getSharedPreferences().edit();
      localEditor.putString(getKey(), paramString);
      localEditor.commit();
    }
    getDialog().dismiss();
  }
  
  public void a(CharSequence[] paramArrayOfCharSequence)
  {
    this.a = paramArrayOfCharSequence;
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder)
  {
    String str = getContext().getString(2131493866);
    int i = findIndexOfValue(getSharedPreferences().getString(getKey(), str));
    paramBuilder.setAdapter(new az(getContext(), 2130903301, getEntries(), this.a, i, this), this);
    super.onPrepareDialogBuilder(paramBuilder);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.ba
 * JD-Core Version:    0.7.0.1
 */