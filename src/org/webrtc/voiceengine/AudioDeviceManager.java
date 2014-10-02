package org.webrtc.voiceengine;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class AudioDeviceManager
{
  public static final boolean USE_NATIVE_ADM = true;
  private static IAudioDevice _audioDevice = null;
  private static IAudioDevice _audioDeviceStub = new AudioDeviceManager.2();
  private static IAudioDevice _dummyADMStub;
  private static Set<IAudioDevice.AudioDeviceStateListener> _listeners;
  private static Object _monitor = new Object();
  
  static
  {
    _listeners = new HashSet();
    _dummyADMStub = new AudioDeviceManager.1();
  }
  
  public static IAudioDevice getAudioDeviceCtl()
  {
    return _dummyADMStub;
  }
  
  public static IAudioDevice getJavaAutioDeviceCtl()
  {
    return _audioDeviceStub;
  }
  
  protected static void registerAudioDevice(IAudioDevice paramIAudioDevice)
  {
    synchronized (_monitor)
    {
      _audioDevice = paramIAudioDevice;
      if (_listeners == null) {
        return;
      }
    }
    synchronized (_listeners)
    {
      Iterator localIterator = _listeners.iterator();
      if (localIterator.hasNext())
      {
        IAudioDevice.AudioDeviceStateListener localAudioDeviceStateListener = (IAudioDevice.AudioDeviceStateListener)localIterator.next();
        _audioDevice.registerStateListener(localAudioDeviceStateListener);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceManager
 * JD-Core Version:    0.7.0.1
 */