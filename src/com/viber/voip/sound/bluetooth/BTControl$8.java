package com.viber.voip.sound.bluetooth;

import java.util.Iterator;
import java.util.Set;

class BTControl$8
  implements Runnable
{
  BTControl$8(BTControl paramBTControl) {}
  
  public void run()
  {
    synchronized (BTControl.access$700(this.this$0))
    {
      Iterator localIterator = BTControl.access$700(this.this$0).iterator();
      if (localIterator.hasNext()) {
        ((BTControl.IBluetoothDeviceListener)localIterator.next()).onAnswerButtonClick();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.8
 * JD-Core Version:    0.7.0.1
 */