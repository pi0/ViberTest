package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;

class Post11BtConnectionDetector$1
  implements BluetoothProfile.ServiceListener
{
  Post11BtConnectionDetector$1(Post11BtConnectionDetector paramPost11BtConnectionDetector) {}
  
  public void onServiceConnected(int paramInt, BluetoothProfile paramBluetoothProfile)
  {
    if (1 == paramInt) {
      this.this$0.headset = ((BluetoothHeadset)paramBluetoothProfile);
    }
  }
  
  public void onServiceDisconnected(int paramInt)
  {
    if (1 == paramInt) {
      this.this$0.headset = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.Post11BtConnectionDetector.1
 * JD-Core Version:    0.7.0.1
 */