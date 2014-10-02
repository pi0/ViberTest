package com.viber.voip.util;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.HashSet;

public class b
  implements PhoneControllerWrapper.InitializedListener
{
  private static String a = b.class.getSimpleName();
  private HashSet<String> b = new c(this);
  private final Context c;
  private Runnable d;
  private Handler e;
  private PhoneController f;
  private boolean g;
  
  public b(Context paramContext)
  {
    a("init");
    this.c = paramContext;
    this.e = dc.a(dk.h);
    this.d = new d(this);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "com.viber.voip.action.APP_ON_FOREGROUND";; str = "com.viber.voip.action.APP_ON_BACKGROUND")
    {
      paramContext.sendBroadcast(new Intent(str));
      return;
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    if (this.f == null) {
      this.g = paramBoolean;
    }
    do
    {
      do
      {
        return;
        a("notifyActivityForeground className:" + paramString + " isForeground:" + paramBoolean);
      } while ((paramString != null) && (this.b.contains(paramString)));
      if (!paramBoolean) {
        break;
      }
      this.e.removeCallbacks(this.d);
      a("isOnForeground checker. notify LIB BG_FOREGROUND");
      this.f.handleAppModeChanged(0);
    } while (this.g);
    a(this.c, true);
    this.g = true;
    return;
    this.e.postDelayed(this.d, 2000L);
  }
  
  public void initialized(PhoneController paramPhoneController)
  {
    a("initialized");
    this.f = paramPhoneController;
    this.g = ViberApplication.getInstance().isOnForeground();
    a(this.g, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b
 * JD-Core Version:    0.7.0.1
 */