package com.viber.voip.sound;

import android.content.res.Resources;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Vibrator;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;

public class RingtoneService
  extends ISoundService.ModeStateListener
  implements IVibratorService
{
  private static final int MSG_STOP_MEDIAPLAYBACK = 1;
  private static final int PAUSE_LENGTH = 1000;
  public static final String TAG = RingtoneService.class.getSimpleName();
  private static final int VIBRATE_LENGTH = 1000;
  static volatile IVibratorService ringtoneServiceSingleton = null;
  private static final long[] vibrationPattern_continuous = { 1000L, 1000L };
  private volatile IRingtoneService.Ringtone _lastRingtone = null;
  private volatile Handler durationControlHandler = new RingtoneService.1(this, dc.a(dk.h).getLooper());
  private final Vibrator mVibrator;
  private final AbstractSoundService soundService;
  
  private RingtoneService(AbstractSoundService paramAbstractSoundService)
  {
    this.soundService = paramAbstractSoundService;
    this.mVibrator = ((Vibrator)paramAbstractSoundService.getApplicationContext().getSystemService("vibrator"));
  }
  
  public static IRingtoneService forSoundService(AbstractSoundService paramAbstractSoundService)
  {
    try
    {
      if (ringtoneServiceSingleton == null) {
        ringtoneServiceSingleton = new RingtoneService(paramAbstractSoundService);
      }
      IVibratorService localIVibratorService = ringtoneServiceSingleton;
      return localIVibratorService;
    }
    finally {}
  }
  
  private boolean isSilent()
  {
    return this.soundService.getRingerMode() == 0;
  }
  
  private void processSampleEnd(IRingtoneService.Ringtone paramRingtone, boolean paramBoolean)
  {
    Integer localInteger = (Integer)paramRingtone.getTag();
    SoundFactory.log(3, TAG, "OnCompletion listener got signal");
    this.durationControlHandler.removeMessages(1);
    this.soundService.clearRouteFlags(8);
    if (localInteger != null) {
      this.soundService.setMode(localInteger.intValue());
    }
    if (paramBoolean)
    {
      SoundFactory.log(3, TAG, "restarting VoCodec after previous suspend");
      ((AudioDeviceOperable)this.soundService).startAudioRecord(this.soundService.suspendNativeOnParallelGSM());
    }
    for (;;)
    {
      if (paramRingtone.getEndPlaybackCallback() != null) {
        paramRingtone.getEndPlaybackCallback().run();
      }
      this._lastRingtone = null;
      return;
      this.soundService.unlockModeChange();
    }
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt)
  {
    return getRingtone(paramInt, false);
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean)
  {
    return getRingtone(paramInt, paramBoolean, false);
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    return getRingtone(Uri.parse("android.resource://" + this.soundService.getApplicationContext().getResources().getResourceName(paramInt).replace(":", "/")), paramBoolean1, paramBoolean2);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri)
  {
    return getRingtone(paramUri, true);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean)
  {
    return getRingtone(paramUri, paramBoolean, false);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new IRingtoneService.Ringtone(this.soundService, paramUri, paramBoolean1, paramBoolean2);
  }
  
  public void onModeStateChanged(int paramInt) {}
  
  public void onModeStatePreChanged(int paramInt) {}
  
  public void playRingtone(Uri paramUri)
  {
    playRingtone(getRingtone(paramUri));
  }
  
  public void playRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    SoundFactory.log(3, TAG, "will try to play ringtone " + paramRingtone);
    if ((isSilent()) || (this.soundService.isRouteActive(16)))
    {
      SoundFactory.log(3, TAG, "Silent mode, or GSM call is active. skipping ringtone");
      return;
    }
    int m;
    if ((!paramRingtone.blockVibrateInSilentMode()) && (shouldVibrate()))
    {
      SoundFactory.log(3, TAG, "vibrating instead of ringing");
      Vibrator localVibrator = this.mVibrator;
      long[] arrayOfLong = vibrationPattern_continuous;
      if (!paramRingtone.loop()) {
        break label379;
      }
      m = 0;
      localVibrator.vibrate(arrayOfLong, m);
      if (paramRingtone.loop()) {
        this.soundService.setRouteFlags(8);
      }
    }
    paramRingtone.setTag(Integer.valueOf(this.soundService.getMode()));
    k localk = this.soundService.getApplicationContext().getPhoneController(false).getCurrentCall();
    if ((localk != null) && (3 == localk.d().c()) && ((this.soundService instanceof AudioDeviceOperable)))
    {
      SoundFactory.log(3, TAG, "VoCodec seems active during ringtone playback - will try to stop and restart it after playback");
      ((AudioDeviceOperable)this.soundService).stopAudioRecord(this.soundService.suspendNativeOnParallelGSM());
    }
    for (boolean bool = true;; bool = false) {
      for (;;)
      {
        try
        {
          if (-1 == paramRingtone.getStreamType()) {
            break label385;
          }
          i = paramRingtone.getStreamType();
          if (-1 == paramRingtone.getAudioMode()) {
            break label397;
          }
          k = paramRingtone.getAudioMode();
          this.soundService.setMediaDataSource(paramRingtone, i);
          MediaPlayer localMediaPlayer = this.soundService.getMediaPlayer();
          localMediaPlayer.setLooping(paramRingtone.loop());
          if (-1 != paramRingtone.getVolume()) {
            localMediaPlayer.setVolume(paramRingtone.getVolume(), paramRingtone.getVolume());
          }
          localMediaPlayer.setAudioStreamType(i);
          localMediaPlayer.setOnCompletionListener(new RingtoneService.2(this, paramRingtone, bool));
          SoundFactory.log(3, TAG, "scheduling ringtone playback when mode will be set to " + CommonAbstractSoundService.getModeName(k));
          this.soundService.lockModeChange();
          this.soundService.setMode(k, new RingtoneService.3(this, paramRingtone), 2);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        label379:
        m = -1;
        break;
        label385:
        int i = this.soundService.stream_Ring();
        continue;
        label397:
        int j = this.soundService.mode_Ringtone();
        int k = j;
      }
    }
  }
  
  public boolean shouldVibrate()
  {
    return this.soundService.shouldVibrate(0);
  }
  
  public void stopRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    this.mVibrator.cancel();
    this.durationControlHandler.removeMessages(1);
    this.soundService.clearRouteFlags(8);
    this.soundService.stopMediaPlayer();
    if ((this._lastRingtone != null) && (this._lastRingtone.getEndPlaybackCallback() != null)) {
      this._lastRingtone.getEndPlaybackCallback().run();
    }
    this._lastRingtone = null;
  }
  
  public boolean stopRingtone()
  {
    stopRingtone(this._lastRingtone);
    return true;
  }
  
  public void vibrate(long paramLong)
  {
    this.mVibrator.vibrate(paramLong);
  }
  
  public void vibrate(long[] paramArrayOfLong, int paramInt)
  {
    this.mVibrator.vibrate(paramArrayOfLong, paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.RingtoneService
 * JD-Core Version:    0.7.0.1
 */