package com.viber.jni.connection;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class ConnectionListener$2
  implements ControllerListener.ControllerListenerAction<ConnectionDelegate>
{
  ConnectionListener$2(ConnectionListener paramConnectionListener, int paramInt) {}
  
  public void execute(ConnectionDelegate paramConnectionDelegate)
  {
    paramConnectionDelegate.onConnectionStateChange(this.val$connectionState);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.connection.ConnectionListener.2
 * JD-Core Version:    0.7.0.1
 */