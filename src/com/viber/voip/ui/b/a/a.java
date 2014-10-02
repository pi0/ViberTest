package com.viber.voip.ui.b.a;

import android.content.Context;
import android.provider.Settings.System;
import com.viber.voip.ViberApplication;

public abstract class a
{
  protected final Context C;
  private final String a;
  
  public a(Context paramContext)
  {
    this.C = paramContext;
    this.a = Settings.System.getString(ViberApplication.getInstance().getContentResolver(), "date_format");
  }
  
  public String p()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.b.a.a
 * JD-Core Version:    0.7.0.1
 */