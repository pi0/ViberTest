package com.viber.voip.sound;

import android.os.Handler;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.concurrent.locks.ReentrantLock;
import org.webrtc.voiceengine.IAudioDevice.AudioDeviceStateListener;

public class VocoderWatchdog
  extends PhoneControllerDelegateAdapter
  implements Runnable, IAudioDevice.AudioDeviceStateListener
{
  public static final int WATCHDOG_RESET_INTERVAL = 180000;
  private final AbstractSoundService soundService;
  private final Handler watchdogEventQueue = dc.a(dk.f);
  private final ReentrantLock watchdogLock = new ReentrantLock();
  
  public VocoderWatchdog(AbstractSoundService paramAbstractSoundService)
  {
    this.soundService = paramAbstractSoundService;
  }
  
  private void resetVocoder()
  {
    this.soundService.resetVoice();
  }
  
  public void onCapturePostStart()
  {
    startWatchdog();
  }
  
  public void onCaptureStart() {}
  
  public void onCaptureStop()
  {
    stopWatchdog();
  }
  
  public void onPlaybackPostStart() {}
  
  public void onPlaybackPostStop() {}
  
  public void onPlaybackPreStart() {}
  
  public void onPlaybackPreStop() {}
  
  public void onPlaybackReady() {}
  
  public void onPlaybackShutdown() {}
  
  public void onStart() {}
  
  public void onStop() {}
  
  public void run()
  {
    try
    {
      this.watchdogLock.lock();
      boolean bool = this.soundService.isMicrophoneMute();
      resetVocoder();
      if (bool) {
        this.soundService.setMicrophoneMute(true);
      }
      return;
    }
    finally
    {
      this.watchdogLock.unlock();
    }
  }
  
  public void startWatchdog()
  {
    stopWatchdog();
    this.watchdogEventQueue.postDelayed(this, 180000L);
  }
  
  public void stopWatchdog()
  {
    try
    {
      this.watchdogLock.lock();
      this.watchdogEventQueue.removeCallbacks(this);
      return;
    }
    finally
    {
      this.watchdogLock.unlock();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.VocoderWatchdog
 * JD-Core Version:    0.7.0.1
 */