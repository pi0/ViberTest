package org.webrtc.voiceengine;

import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.bluetooth.BTControl;

class NativeADMDelegate$1
  implements Runnable
{
  NativeADMDelegate$1(NativeADMDelegate paramNativeADMDelegate, ISoundService paramISoundService) {}
  
  public void run()
  {
    BTControl localBTControl = this.val$soundService.getBluetoothCtl();
    if (BTControl.isAvailable()) {
      localBTControl.enableBluetoothRoute();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.NativeADMDelegate.1
 * JD-Core Version:    0.7.0.1
 */