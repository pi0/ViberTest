package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class BTControl$4
  extends BroadcastReceiver
{
  BTControl$4(BTControl paramBTControl) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = -1;
    String str1 = paramIntent.getAction();
    BluetoothDevice localBluetoothDevice = (BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
    if (localBluetoothDevice == null)
    {
      BTControl.access$100("{Bt} null device for intent " + paramIntent + ", something wrong");
      return;
    }
    if ("android.bluetooth.headset.action.STATE_CHANGED".equals(str1))
    {
      k = paramIntent.getIntExtra("android.bluetooth.headset.extra.STATE", i);
      localStringBuilder2 = new StringBuilder().append("{Bt} {ACTION_HEADSET_STATE_CHANGED} device=");
      if (localBluetoothDevice != null)
      {
        str3 = localBluetoothDevice.getName();
        BTControl.access$100(str3 + ", state=" + k);
        i = k;
      }
    }
    while (!"android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(str1)) {
      for (;;)
      {
        int k;
        StringBuilder localStringBuilder2;
        BTControl.access$600(this.this$0, localBluetoothDevice, i);
        return;
        String str3 = "null";
      }
    }
    int j = paramIntent.getIntExtra("android.bluetooth.profile.extra.STATE", 10);
    StringBuilder localStringBuilder1 = new StringBuilder().append("{Bt} {ACTION_CONNECTION_STATE_CHANGED} device=");
    if (localBluetoothDevice != null) {}
    for (String str2 = localBluetoothDevice.getName();; str2 = "null")
    {
      BTControl.access$100(str2 + ", state=" + j);
      i = j;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.4
 * JD-Core Version:    0.7.0.1
 */