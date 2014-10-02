package com.viber.jni.controller;

import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.connection.ConnectionController;

public class PhoneControllerCaller<P>
  implements PhoneControllerReadyListener
{
  private static final int METHOD_CALL_COUNT = 3;
  private ConnectionController mConnection;
  private P mController;
  private boolean mReady = false;
  
  public PhoneControllerCaller(P paramP, ConnectionController paramConnectionController)
  {
    this.mController = paramP;
    this.mConnection = paramConnectionController;
  }
  
  protected boolean multyMethodCall(PhoneControllerCaller.MultiCallerCallback<P> paramMultiCallerCallback)
  {
    for (int i = 0;; i++)
    {
      if ((i >= 3) || (!this.mReady)) {}
      do
      {
        return false;
        if (paramMultiCallerCallback.call(this.mController)) {
          return true;
        }
      } while (!this.mConnection.isConnected());
    }
  }
  
  public void ready(PhoneController paramPhoneController)
  {
    this.mReady = true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.controller.PhoneControllerCaller
 * JD-Core Version:    0.7.0.1
 */