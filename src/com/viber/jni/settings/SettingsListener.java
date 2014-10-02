package com.viber.jni.settings;

import com.viber.jni.controller.ControllerListener;

public class SettingsListener
  extends ControllerListener<SettingsControllerDelegate>
  implements SettingsControllerDelegate
{
  public void onChangeLastOnlineSettingsReply(int paramInt1, int paramInt2)
  {
    notifyListeners(new SettingsListener.1(this, paramInt1, paramInt2));
  }
  
  public void onChangeReadNotificationsSettingsReply(int paramInt1, int paramInt2)
  {
    notifyListeners(new SettingsListener.2(this, paramInt1, paramInt2));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.settings.SettingsListener
 * JD-Core Version:    0.7.0.1
 */