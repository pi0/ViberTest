package com.viber.jni.settings;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class SettingsListener$1
  implements ControllerListener.ControllerListenerAction<SettingsControllerDelegate>
{
  SettingsListener$1(SettingsListener paramSettingsListener, int paramInt1, int paramInt2) {}
  
  public void execute(SettingsControllerDelegate paramSettingsControllerDelegate)
  {
    paramSettingsControllerDelegate.onChangeLastOnlineSettingsReply(this.val$setting, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.settings.SettingsListener.1
 * JD-Core Version:    0.7.0.1
 */