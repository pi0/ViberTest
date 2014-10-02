package com.viber.service;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;

class g
  implements ConnectionDelegate
{
  g(f paramf, PhoneControllerWrapper paramPhoneControllerWrapper, ConnectionListener paramConnectionListener, i parami) {}
  
  public void onConnect() {}
  
  public void onConnectionStateChange(int paramInt)
  {
    if (this.a.isConnected())
    {
      this.b.removeDelegate(this);
      if (this.c != null) {
        this.c.a();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.g
 * JD-Core Version:    0.7.0.1
 */