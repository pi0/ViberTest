package com.viber.jni.settings;

import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class SettingsControllerCaller$2
  implements PhoneControllerCaller.MultiCallerCallback<SettingsController>
{
  SettingsControllerCaller$2(SettingsControllerCaller paramSettingsControllerCaller, int paramInt) {}
  
  public boolean call(SettingsController paramSettingsController)
  {
    return paramSettingsController.handleChangeReadNotificationsSettings(this.val$setting);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.settings.SettingsControllerCaller.2
 * JD-Core Version:    0.7.0.1
 */