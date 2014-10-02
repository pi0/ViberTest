package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import com.viber.error.report.ErrorReportDialog;
import com.viber.voip.ViberApplication;

public class ha
{
  public static void a(Context paramContext)
  {
    gn.a(paramContext, new Intent("com.viber.voip.action.ABOUT"), true, null);
  }
  
  public static void b(Context paramContext)
  {
    gn.a(paramContext, new Intent(ViberApplication.getInstance(), ErrorReportDialog.class), true, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.ha
 * JD-Core Version:    0.7.0.1
 */