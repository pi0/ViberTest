package com.viber.jni.connection;

import com.viber.jni.controller.ControllerListener;

public class ConnectionListener
  extends ControllerListener<ConnectionDelegate>
  implements ConnectionDelegate
{
  public void onConnect()
  {
    notifyListeners(new ConnectionListener.1(this));
  }
  
  public void onConnectionStateChange(int paramInt)
  {
    notifyListeners(new ConnectionListener.2(this, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.connection.ConnectionListener
 * JD-Core Version:    0.7.0.1
 */