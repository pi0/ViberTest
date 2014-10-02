package com.viber.voip.settings.ui;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.viber.jni.DeviceFlags;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import com.viber.voip.sound.AbstractSoundService;

class s
  implements Preference.OnPreferenceClickListener
{
  s(j paramj) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool = ((CheckBoxPreference)paramPreference).isChecked();
    ViberApplication.preferences().a("webrtc_ec_enabled", bool);
    AbstractSoundService.setDeviceFlags(DeviceFlags.getFlagsForDeviceModel());
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.s
 * JD-Core Version:    0.7.0.1
 */