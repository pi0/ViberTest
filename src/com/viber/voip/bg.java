package com.viber.voip;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.viber.voip.sound.VoENativeDebugHelper;

class bg
  implements Preference.OnPreferenceChangeListener
{
  bg(SoundSettingsActivity paramSoundSettingsActivity, CheckBoxPreference paramCheckBoxPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    VoENativeDebugHelper.clearDumps();
    this.a.setEnabled(false);
    this.a.setChecked(true);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bg
 * JD-Core Version:    0.7.0.1
 */