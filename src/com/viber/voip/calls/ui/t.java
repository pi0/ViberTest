package com.viber.voip.calls.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.format.DateUtils;
import com.viber.voip.settings.j;
import java.util.Locale;

public final class t
{
  static
  {
    if (!q.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public t(q paramq, Context paramContext) {}
  
  public int a(int paramInt)
  {
    if (paramInt == 3) {
      return 2130838284;
    }
    if (paramInt == 2) {
      return 2130838285;
    }
    if ((paramInt == 1) || (paramInt == 5)) {
      return 2130838283;
    }
    return 0;
  }
  
  public String a(long paramLong)
  {
    if (!q.a(this.b))
    {
      Locale localLocale = new Locale(j.I());
      Locale.setDefault(localLocale);
      Resources localResources = Resources.getSystem();
      if ((!a) && (localResources == null)) {
        throw new AssertionError();
      }
      Configuration localConfiguration = localResources.getConfiguration();
      localConfiguration.locale = localLocale;
      localResources.updateConfiguration(localConfiguration, this.b.a.getResources().getDisplayMetrics());
    }
    return DateUtils.getRelativeTimeSpanString(paramLong, System.currentTimeMillis(), 60000L, 65536).toString();
  }
  
  public String b(int paramInt)
  {
    Resources localResources = this.b.a.getResources();
    if (paramInt == 3) {
      return localResources.getString(2131493741);
    }
    if (paramInt == 2) {
      return localResources.getString(2131493740);
    }
    if (paramInt == 1) {
      return localResources.getString(2131493739);
    }
    if (paramInt == 5) {
      return localResources.getString(2131493743);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.t
 * JD-Core Version:    0.7.0.1
 */