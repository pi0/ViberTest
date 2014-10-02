package org.webrtc.voiceengine;

import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.bluetooth.BTControl;

class NativeADMDelegate$2
  implements Runnable
{
  NativeADMDelegate$2(NativeADMDelegate paramNativeADMDelegate, ISoundService paramISoundService) {}
  
  public void run()
  {
    BTControl localBTControl = this.val$soundService.getBluetoothCtl();
    if (BTControl.isAvailable())
    {
      localBTControl.disableBluetoothRoute();
      localBTControl.stopBluetooth();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.NativeADMDelegate.2
 * JD-Core Version:    0.7.0.1
 */