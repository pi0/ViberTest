package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.viber.voip.ViberApplication;

public class hb
{
  public static void a(Context paramContext)
  {
    gn.a(paramContext, new Intent("android.intent.action.VIEW", Uri.parse(ViberApplication.getInstance().getString(2131494831))), true, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.hb
 * JD-Core Version:    0.7.0.1
 */