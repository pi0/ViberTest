package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;
import java.util.Iterator;
import java.util.Set;

class BTControl$7
  implements Runnable
{
  BTControl$7(BTControl paramBTControl, BluetoothDevice paramBluetoothDevice) {}
  
  public void run()
  {
    synchronized (BTControl.access$700(this.this$0))
    {
      Iterator localIterator = BTControl.access$700(this.this$0).iterator();
      if (localIterator.hasNext()) {
        ((BTControl.IBluetoothDeviceListener)localIterator.next()).onError(this.val$device);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.7
 * JD-Core Version:    0.7.0.1
 */