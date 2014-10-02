package org.acra;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.util.Log;

final class ACRA$1
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    boolean bool = true;
    Object localObject;
    if (("acra.disable".equals(paramString)) || ("acra.enable".equals(paramString))) {
      localObject = Boolean.valueOf(false);
    }
    for (;;)
    {
      try
      {
        if (paramSharedPreferences.getBoolean("acra.enable", true)) {
          continue;
        }
        Boolean localBoolean = Boolean.valueOf(paramSharedPreferences.getBoolean("acra.disable", bool));
        localObject = localBoolean;
      }
      catch (Exception localException)
      {
        continue;
      }
      if (!((Boolean)localObject).booleanValue()) {
        continue;
      }
      ErrorReporter.getInstance().disable();
      return;
      bool = false;
    }
    try
    {
      ACRA.access$000();
      return;
    }
    catch (ACRAConfigurationException localACRAConfigurationException)
    {
      Log.w(ACRA.LOG_TAG, "Error : ", localACRAConfigurationException);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.ACRA.1
 * JD-Core Version:    0.7.0.1
 */