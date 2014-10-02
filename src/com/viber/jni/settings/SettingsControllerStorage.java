package com.viber.jni.settings;

import com.viber.jni.connection.ConnectionDelegate;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class SettingsControllerStorage
  implements ConnectionDelegate, SettingsController, SettingsControllerDelegate
{
  private static final String TAG = "SettingsControllerStorage";
  private SettingsController mController;
  private l mStorage;
  
  public SettingsControllerStorage(SettingsController paramSettingsController, l paraml)
  {
    this.mController = paramSettingsController;
    this.mStorage = paraml;
  }
  
  private void log(String paramString)
  {
    ViberApplication.log(3, "SettingsControllerStorage", paramString);
  }
  
  public boolean handleChangeLastOnlineSettings(int paramInt)
  {
    this.mStorage.a("last_online_dirty", paramInt);
    return this.mController.handleChangeLastOnlineSettings(paramInt);
  }
  
  public boolean handleChangeReadNotificationsSettings(int paramInt)
  {
    this.mStorage.a("read_state_dirty", paramInt);
    return this.mController.handleChangeReadNotificationsSettings(paramInt);
  }
  
  public void onChangeLastOnlineSettingsReply(int paramInt1, int paramInt2)
  {
    log("onReply LAST_ONLINE: " + paramInt1 + ", " + paramInt2);
    if (paramInt2 == 1) {
      this.mStorage.a("last_online_dirty");
    }
  }
  
  public void onChangeReadNotificationsSettingsReply(int paramInt1, int paramInt2)
  {
    log("onReply READ_STATE: " + paramInt1 + ", " + paramInt2);
    if (paramInt2 == 1) {
      this.mStorage.a("read_state_dirty");
    }
  }
  
  public void onConnect()
  {
    int i = 1;
    int k;
    l locall1;
    if (this.mStorage.b("last_online_dirty"))
    {
      l locall2 = this.mStorage;
      if (j.Z())
      {
        k = i;
        int m = locall2.b("last_online_dirty", k);
        log("onConnect LAST_ONLINE: " + m);
        this.mController.handleChangeLastOnlineSettings(m);
      }
    }
    else if (this.mStorage.b("read_state_dirty"))
    {
      locall1 = this.mStorage;
      if (!j.ab()) {
        break label156;
      }
    }
    for (;;)
    {
      int j = locall1.b("read_state_dirty", i);
      log("onConnect READ_STATE: " + j);
      this.mController.handleChangeReadNotificationsSettings(j);
      return;
      k = 0;
      break;
      label156:
      i = 0;
    }
  }
  
  public void onConnectionStateChange(int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.settings.SettingsControllerStorage
 * JD-Core Version:    0.7.0.1
 */