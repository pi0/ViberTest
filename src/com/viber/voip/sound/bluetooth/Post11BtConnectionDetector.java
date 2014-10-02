package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public class Post11BtConnectionDetector
  implements BtConnectionDetector
{
  BluetoothHeadset headset = null;
  
  public Post11BtConnectionDetector(Context paramContext)
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter == null) {
      return;
    }
    localBluetoothAdapter.getProfileProxy(paramContext, new Post11BtConnectionDetector.1(this), 1);
  }
  
  public boolean anyHeadsetConnected()
  {
    if (this.headset == null) {}
    while (this.headset.getConnectedDevices().size() <= 0) {
      return false;
    }
    return true;
  }
  
  public void close()
  {
    if (this.headset != null)
    {
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if ((localBluetoothAdapter != null) && (this.headset != null)) {
        localBluetoothAdapter.closeProfileProxy(1, this.headset);
      }
    }
  }
  
  public List<BluetoothDevice> getConnectedHeadsets()
  {
    if (this.headset == null) {
      return new ArrayList(1);
    }
    return this.headset.getConnectedDevices();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.Post11BtConnectionDetector
 * JD-Core Version:    0.7.0.1
 */