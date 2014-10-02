package com.viber.voip;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.widget.Toast;
import org.webrtc.voiceengine.NativeADMCtl;

class bf
  implements Preference.OnPreferenceChangeListener
{
  bf(SoundSettingsActivity paramSoundSettingsActivity, NativeADMCtl paramNativeADMCtl) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    int i = Integer.parseInt((String)paramObject);
    if (i != (i & this.a.getDeviceMask()))
    {
      Toast.makeText(this.b.getApplicationContext(), 2131494314, 1).show();
      return false;
    }
    this.a.setDeviceMask(i);
    this.b.a(this.a, i);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bf
 * JD-Core Version:    0.7.0.1
 */