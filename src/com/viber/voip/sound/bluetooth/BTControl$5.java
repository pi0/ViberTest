package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;
import java.util.Iterator;
import java.util.Set;

class BTControl$5
  implements Runnable
{
  BTControl$5(BTControl paramBTControl, BluetoothDevice paramBluetoothDevice) {}
  
  public void run()
  {
    synchronized (BTControl.access$700(this.this$0))
    {
      Iterator localIterator = BTControl.access$700(this.this$0).iterator();
      if (localIterator.hasNext()) {
        ((BTControl.IBluetoothDeviceListener)localIterator.next()).onDeviceConnected(this.val$device);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.5
 * JD-Core Version:    0.7.0.1
 */