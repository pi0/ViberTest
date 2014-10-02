package com.viber.voip;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gcm.GCMBaseIntentService;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.b.a;

public class GCMIntentService
  extends GCMBaseIntentService
{
  public GCMIntentService()
  {
    super(new String[] { "373969298204" });
  }
  
  public void a(Context paramContext, int paramInt)
  {
    a.a().a(paramContext, paramInt);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    if (dx.b)
    {
      Log.d("GCMIntentService", paramIntent.toString());
      startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
      ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new ab(this, paramContext, paramIntent));
    }
  }
  
  public boolean a(Context paramContext, String paramString)
  {
    a.a().b(paramContext, paramString);
    return super.a(paramContext, paramString);
  }
  
  public void b(Context paramContext, String paramString)
  {
    a.a().a(paramContext, paramString);
  }
  
  public void c(Context paramContext, String paramString)
  {
    a.a().a(paramContext, paramString, true);
  }
  
  public void d(Context paramContext, String paramString)
  {
    a.a().c(paramContext, paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.GCMIntentService
 * JD-Core Version:    0.7.0.1
 */