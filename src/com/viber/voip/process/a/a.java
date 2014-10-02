package com.viber.voip.process.a;

import android.content.Context;
import android.os.Bundle;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.c;

public class a
  extends c
{
  public void a(long paramLong, String paramString) {}
  
  public void a(Context paramContext)
  {
    execute(paramContext, a.class, null);
  }
  
  public void doInTargetProcess(Bundle paramBundle, com.viber.voip.process.b paramb)
  {
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
    localPhoneControllerWrapper.registerDelegate(new b(this, localPhoneControllerWrapper, paramb));
    localPhoneControllerWrapper.handleGetBillingToken();
  }
  
  public void processResult(Bundle paramBundle)
  {
    a(paramBundle.getLong("timestamp"), paramBundle.getString("token"));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.a.a
 * JD-Core Version:    0.7.0.1
 */