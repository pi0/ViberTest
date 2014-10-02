package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;

public abstract interface BTControl$IBluetoothDeviceListener
{
  public abstract void onAnswerButtonClick();
  
  public abstract void onDeviceConnected(BluetoothDevice paramBluetoothDevice);
  
  public abstract void onDeviceDisconnected(BluetoothDevice paramBluetoothDevice);
  
  public abstract void onError(BluetoothDevice paramBluetoothDevice);
  
  public abstract boolean onHandsetOffCallDisabled();
  
  public abstract boolean onHandsetOffCallEnabled();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.IBluetoothDeviceListener
 * JD-Core Version:    0.7.0.1
 */