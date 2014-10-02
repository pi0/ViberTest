package com.viber.jni.settings;

import com.viber.jni.connection.ConnectionController;
import com.viber.jni.controller.PhoneControllerCaller;

public class SettingsControllerCaller
  extends PhoneControllerCaller<SettingsController>
  implements SettingsController
{
  public SettingsControllerCaller(SettingsController paramSettingsController, ConnectionController paramConnectionController)
  {
    super(paramSettingsController, paramConnectionController);
  }
  
  public boolean handleChangeLastOnlineSettings(int paramInt)
  {
    return multyMethodCall(new SettingsControllerCaller.1(this, paramInt));
  }
  
  public boolean handleChangeReadNotificationsSettings(int paramInt)
  {
    return multyMethodCall(new SettingsControllerCaller.2(this, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.settings.SettingsControllerCaller
 * JD-Core Version:    0.7.0.1
 */