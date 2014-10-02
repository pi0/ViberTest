package com.viber.jni;

public class PhoneControllerInitializer
{
  private short _GenNum;
  private int _PhoneType;
  private String _PushToken;
  private byte[] _UDID;
  private int _appMode;
  final PhoneControllerDelegate _delegate;
  private byte[] _deviceKey;
  private String _lbHost;
  private int _lbPort;
  private boolean _localDBAvailable;
  private short _myCountryCode;
  private String _myPhoneNumber;
  private int _pixieMode;
  private int _pixiePort;
  private String _pttHost;
  private String _pttPath;
  private int _serverEnv;
  
  public PhoneControllerInitializer(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString1, int paramInt1, short paramShort1, short paramShort2, String paramString2, String paramString3, PhoneControllerDelegate paramPhoneControllerDelegate, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this._UDID = paramArrayOfByte1;
    this._deviceKey = paramArrayOfByte2;
    this._PushToken = paramString1;
    this._PhoneType = paramInt1;
    this._GenNum = paramShort1;
    this._myCountryCode = paramShort2;
    this._myPhoneNumber = paramString2;
    this._delegate = paramPhoneControllerDelegate;
    this._localDBAvailable = paramBoolean;
    this._appMode = paramInt2;
    this._pixieMode = paramInt3;
    this._pixiePort = paramInt4;
    this._pttPath = paramString3;
    this._serverEnv = paramInt5;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerInitializer
 * JD-Core Version:    0.7.0.1
 */