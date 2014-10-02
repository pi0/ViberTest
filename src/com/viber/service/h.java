package com.viber.service;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.jni.controller.PhoneController;

class h
  implements PhoneControllerWrapper.InitializedListener
{
  h(f paramf, ConnectionListener paramConnectionListener, ConnectionDelegate paramConnectionDelegate) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    ConnectionListener localConnectionListener = this.a;
    ConnectionDelegate[] arrayOfConnectionDelegate = new ConnectionDelegate[1];
    arrayOfConnectionDelegate[0] = this.b;
    localConnectionListener.registerDelegate(arrayOfConnectionDelegate);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.h
 * JD-Core Version:    0.7.0.1
 */