package com.viber.jni;

public enum PhoneControllerDelegate$ViberConnectionState
{
  static
  {
    NO_INTERNET = new ViberConnectionState("NO_INTERNET", 2);
    CONNECTING = new ViberConnectionState("CONNECTING", 3);
    ViberConnectionState[] arrayOfViberConnectionState = new ViberConnectionState[4];
    arrayOfViberConnectionState[0] = SERVICE_CONNECTED;
    arrayOfViberConnectionState[1] = SERVICE_NOT_CONNECTED;
    arrayOfViberConnectionState[2] = NO_INTERNET;
    arrayOfViberConnectionState[3] = CONNECTING;
    $VALUES = arrayOfViberConnectionState;
  }
  
  private PhoneControllerDelegate$ViberConnectionState() {}
  
  public static ViberConnectionState resolveEnum(int paramInt)
  {
    ViberConnectionState[] arrayOfViberConnectionState = new ViberConnectionState[4];
    arrayOfViberConnectionState[0] = SERVICE_CONNECTED;
    arrayOfViberConnectionState[1] = SERVICE_NOT_CONNECTED;
    arrayOfViberConnectionState[2] = NO_INTERNET;
    arrayOfViberConnectionState[3] = CONNECTING;
    return arrayOfViberConnectionState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerDelegate.ViberConnectionState
 * JD-Core Version:    0.7.0.1
 */