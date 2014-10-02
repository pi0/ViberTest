package com.viber.voip.sound.bluetooth;

import android.content.Context;
import android.os.Build.VERSION;

public class BtConnectionDetectorFactory
{
  public static BtConnectionDetector create(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return new Post11BtConnectionDetector(paramContext);
    }
    return new Pre10BtConnectionDetector(paramContext);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BtConnectionDetectorFactory
 * JD-Core Version:    0.7.0.1
 */