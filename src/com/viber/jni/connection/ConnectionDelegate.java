package com.viber.jni.connection;

public abstract interface ConnectionDelegate
{
  public abstract void onConnect();
  
  public abstract void onConnectionStateChange(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.connection.ConnectionDelegate
 * JD-Core Version:    0.7.0.1
 */