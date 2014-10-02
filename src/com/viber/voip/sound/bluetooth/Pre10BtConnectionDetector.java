package com.viber.voip.sound.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class Pre10BtConnectionDetector
  implements BtConnectionDetector
{
  private static final String BLUETOOTH_HEADSET_CLASS = "android.bluetooth.BluetoothHeadset";
  private static final String CLOSE_METHOD_NAME = "close";
  private static final String GET_CURRENT_HEADSET_METHOD_NAME = "getCurrentHeadset";
  Object bluetoothHeadset = null;
  Method closeMethod = null;
  Method getCurrentHeadsetMethod = null;
  
  public Pre10BtConnectionDetector(Context paramContext)
  {
    try
    {
      Class localClass = Class.forName("android.bluetooth.BluetoothHeadset");
      this.bluetoothHeadset = localClass.getConstructors()[0].newInstance(new Object[] { paramContext, null });
      this.getCurrentHeadsetMethod = localClass.getMethod("getCurrentHeadset", new Class[0]);
      this.closeMethod = localClass.getMethod("close", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}catch (InvocationTargetException localInvocationTargetException) {}catch (IllegalAccessException localIllegalAccessException) {}catch (InstantiationException localInstantiationException) {}catch (IllegalArgumentException localIllegalArgumentException) {}catch (ClassNotFoundException localClassNotFoundException) {}
  }
  
  public boolean anyHeadsetConnected()
  {
    try
    {
      Object localObject1 = this.bluetoothHeadset;
      boolean bool = false;
      if (localObject1 != null)
      {
        Method localMethod = this.getCurrentHeadsetMethod;
        bool = false;
        if (localMethod != null)
        {
          Object localObject2 = this.getCurrentHeadsetMethod.invoke(this.bluetoothHeadset, new Object[0]);
          bool = false;
          if (localObject2 != null) {
            bool = true;
          }
        }
      }
      return bool;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return false;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
    return false;
  }
  
  public void close()
  {
    try
    {
      if ((this.bluetoothHeadset != null) && (this.closeMethod != null)) {
        this.closeMethod.invoke(this.bluetoothHeadset, new Object[0]);
      }
      return;
    }
    catch (InvocationTargetException localInvocationTargetException) {}catch (IllegalAccessException localIllegalAccessException) {}catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  public List<BluetoothDevice> getConnectedHeadsets()
  {
    ArrayList localArrayList = new ArrayList(2);
    try
    {
      if ((this.bluetoothHeadset != null) && (this.getCurrentHeadsetMethod != null))
      {
        BluetoothDevice localBluetoothDevice = (BluetoothDevice)this.getCurrentHeadsetMethod.invoke(this.bluetoothHeadset, new Object[0]);
        if (localBluetoothDevice != null) {
          localArrayList.add(localBluetoothDevice);
        }
      }
      return localArrayList;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return localArrayList;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return localArrayList;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
    return localArrayList;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.Pre10BtConnectionDetector
 * JD-Core Version:    0.7.0.1
 */