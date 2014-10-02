package com.viber.jni.connection;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class ConnectionListener$1
  implements ControllerListener.ControllerListenerAction<ConnectionDelegate>
{
  ConnectionListener$1(ConnectionListener paramConnectionListener) {}
  
  public void execute(ConnectionDelegate paramConnectionDelegate)
  {
    paramConnectionDelegate.onConnect();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.connection.ConnectionListener.1
 * JD-Core Version:    0.7.0.1
 */