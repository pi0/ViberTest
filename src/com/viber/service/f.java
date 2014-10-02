package com.viber.service;

import android.content.Intent;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.voip.ViberApplication;

public class f
{
  public void a(i parami)
  {
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
    ConnectionListener localConnectionListener = localPhoneControllerWrapper.getDelegatesManager().getConnectionListener();
    g localg = new g(this, localPhoneControllerWrapper, localConnectionListener, parami);
    if (localPhoneControllerWrapper.isInitialized())
    {
      if (localPhoneControllerWrapper.isConnected())
      {
        if (parami != null) {
          parami.a();
        }
        return;
      }
      localConnectionListener.registerDelegate(new ConnectionDelegate[] { localg });
      return;
    }
    ViberApplication.getInstance().startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
    localPhoneControllerWrapper.addInitializedListener(new h(this, localConnectionListener, localg));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.f
 * JD-Core Version:    0.7.0.1
 */