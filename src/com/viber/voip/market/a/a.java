package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.c;
import com.viber.voip.util.ft;

public class a
  extends c
{
  private b a;
  
  private boolean a()
  {
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
    boolean bool = ft.b(ViberApplication.getInstance());
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState = localPhoneControllerWrapper.getServiceState();
    return (bool) && (localViberConnectionState == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED);
  }
  
  public void a(b paramb)
  {
    this.a = paramb;
    execute(ViberApplication.getInstance(), a.class, null);
  }
  
  public void doInTargetProcess(Bundle paramBundle, com.viber.voip.process.b paramb)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("online", a());
    paramb.a(localBundle);
  }
  
  public void processResult(Bundle paramBundle)
  {
    boolean bool = paramBundle.getBoolean("online");
    this.a.a(bool);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.a
 * JD-Core Version:    0.7.0.1
 */