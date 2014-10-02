package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;
import java.util.List;

public abstract interface BtConnectionDetector
{
  public abstract boolean anyHeadsetConnected();
  
  public abstract void close();
  
  public abstract List<BluetoothDevice> getConnectedHeadsets();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BtConnectionDetector
 * JD-Core Version:    0.7.0.1
 */