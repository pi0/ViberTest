package com.viber.jni.settings;

import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class SettingsControllerCaller$1
  implements PhoneControllerCaller.MultiCallerCallback<SettingsController>
{
  SettingsControllerCaller$1(SettingsControllerCaller paramSettingsControllerCaller, int paramInt) {}
  
  public boolean call(SettingsController paramSettingsController)
  {
    return paramSettingsController.handleChangeLastOnlineSettings(this.val$setting);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.settings.SettingsControllerCaller.1
 * JD-Core Version:    0.7.0.1
 */