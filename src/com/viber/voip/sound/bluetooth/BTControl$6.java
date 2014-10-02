package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;
import java.util.Iterator;
import java.util.Set;

class BTControl$6
  implements Runnable
{
  BTControl$6(BTControl paramBTControl, BluetoothDevice paramBluetoothDevice) {}
  
  public void run()
  {
    synchronized (BTControl.access$700(this.this$0))
    {
      Iterator localIterator = BTControl.access$700(this.this$0).iterator();
      if (localIterator.hasNext()) {
        ((BTControl.IBluetoothDeviceListener)localIterator.next()).onDeviceDisconnected(this.val$device);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.6
 * JD-Core Version:    0.7.0.1
 */