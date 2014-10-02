package com.viber.voip.launcher;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;

public class ContactWidget
  extends AppWidgetProvider
{
  private void a(Context paramContext, int paramInt1, int paramInt2)
  {
    a("updateWidgets callCount:" + paramInt1 + ",messagesCount:" + paramInt2);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "RecentCallsWidget", paramString);
  }
  
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    a("onDeleted");
    super.onDeleted(paramContext, paramArrayOfInt);
  }
  
  public void onDisabled(Context paramContext)
  {
    a("onDisabled");
    super.onDisabled(paramContext);
    paramContext.getPackageManager().setComponentEnabledSetting(new ComponentName("com.viber.voip", ".RecentCallsWidget"), 2, 1);
  }
  
  public void onEnabled(Context paramContext)
  {
    a("onEnabled");
    super.onEnabled(paramContext);
    paramContext.getPackageManager().setComponentEnabledSetting(new ComponentName("com.viber.voip", ".RecentCallsWidget"), 1, 1);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    if ("com.viber.voip.action.UPDATE_WIDGETS".equals(paramIntent.getAction())) {
      dc.a(dk.g).post(new a(this, paramIntent, paramContext));
    }
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    a("onUpdate");
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.launcher.ContactWidget
 * JD-Core Version:    0.7.0.1
 */