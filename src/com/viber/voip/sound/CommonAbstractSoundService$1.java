package com.viber.voip.sound;

import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.bluetooth.BTControl;
import org.webrtc.voiceengine.IAudioDevice.AudioDeviceStateListener;

class CommonAbstractSoundService$1
  implements IAudioDevice.AudioDeviceStateListener
{
  CommonAbstractSoundService$1(CommonAbstractSoundService paramCommonAbstractSoundService) {}
  
  public void onCapturePostStart()
  {
    if (CommonAbstractSoundService.access$100() != null)
    {
      CommonAbstractSoundService.access$100().post(new CommonAbstractSoundService.1.3(this));
      return;
    }
    this.this$0.processAudioDevStartSignalOnce(true);
  }
  
  public void onCaptureStart()
  {
    if (CommonAbstractSoundService.access$100() != null)
    {
      CommonAbstractSoundService.access$100().post(new CommonAbstractSoundService.1.2(this));
      return;
    }
    this.this$0.processAudioDevStartSignalOnce(false);
  }
  
  public void onCaptureStop()
  {
    if (CommonAbstractSoundService.access$100() != null)
    {
      CommonAbstractSoundService.access$100().post(new CommonAbstractSoundService.1.1(this));
      return;
    }
    this.this$0.processAudioDevStopSignalOnce();
  }
  
  public void onPlaybackPostStart() {}
  
  public void onPlaybackPostStop() {}
  
  public void onPlaybackPreStart() {}
  
  public void onPlaybackPreStop() {}
  
  public void onPlaybackReady() {}
  
  public void onPlaybackShutdown() {}
  
  public void onStart()
  {
    if (this.this$0.havingValidVoiceChannel())
    {
      ViberApplication.log(3, CommonAbstractSoundService.TAG, "DEV_onStart event");
      this.this$0.setRouteFlags(1);
      CommonAbstractSoundService.access$200(this.this$0).enableBluetoothRoute();
    }
  }
  
  public void onStop()
  {
    if (!this.this$0.havingValidVoiceChannel())
    {
      ViberApplication.log(3, CommonAbstractSoundService.TAG, "DEV_onStop event");
      this.this$0.clearRouteFlags(1);
    }
    CommonAbstractSoundService.access$200(this.this$0).disableBluetoothRoute();
    CommonAbstractSoundService.access$200(this.this$0).stopBluetooth();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.1
 * JD-Core Version:    0.7.0.1
 */