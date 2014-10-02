package com.viber.jni.settings;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class SettingsListener$2
  implements ControllerListener.ControllerListenerAction<SettingsControllerDelegate>
{
  SettingsListener$2(SettingsListener paramSettingsListener, int paramInt1, int paramInt2) {}
  
  public void execute(SettingsControllerDelegate paramSettingsControllerDelegate)
  {
    paramSettingsControllerDelegate.onChangeReadNotificationsSettingsReply(this.val$settings, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.settings.SettingsListener.2
 * JD-Core Version:    0.7.0.1
 */