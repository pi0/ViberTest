package com.viber.voip.sound.tonegen;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.CommonAbstractSoundService;
import com.viber.voip.sound.IRingtoneService.Ringtone;
import com.viber.voip.sound.ISoundService;

public class MediaToneGenerator
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, IToneGenerator
{
  public static final String TAG = MediaToneGenerator.class.getSimpleName();
  private static final MediaPlayer mediaPlayer = new MediaPlayer();
  private static final MediaToneGenerator.MediaStarter mediaStarter = new MediaToneGenerator.MediaStarter(null);
  private volatile float _maxVolume;
  private final int _modeSet;
  private volatile int _streamType;
  private volatile Runnable callback = null;
  final ISoundService soundService;
  private volatile TonePlayer tonePlayer;
  private Runnable urgencyGuard = new MediaToneGenerator.1(this);
  
  public MediaToneGenerator(ISoundService paramISoundService, int paramInt1, int paramInt2, float paramFloat)
  {
    this.soundService = paramISoundService;
    this._streamType = paramInt2;
    this._maxVolume = paramFloat;
    this._modeSet = paramInt1;
  }
  
  private void _stop()
  {
    mediaPlayer.stop();
    mediaPlayer.reset();
  }
  
  protected void finalize()
  {
    super.finalize();
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    synchronized (mediaPlayer)
    {
      if ((this.tonePlayer != null) && (this.tonePlayer.onToneEndCallback())) {
        this.tonePlayer = null;
      }
      if ((this.tonePlayer == null) && (this.callback != null)) {
        this.callback.run();
      }
      return;
    }
  }
  
  public void onModeStateChangeDeferred(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "MediaToneGenerator got defer signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
  }
  
  public void onModeStateChangeRejected(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "MediaToneGenerator got reject signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
  }
  
  public void onModeStateChanged(int paramInt) {}
  
  public void onModeStatePreChanged(int paramInt)
  {
    if (paramInt == this._modeSet) {
      return;
    }
    stopTone();
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer) {}
  
  public void setPlayer(TonePlayer paramTonePlayer)
  {
    this.tonePlayer = paramTonePlayer;
  }
  
  public void startTone(int paramInt)
  {
    startTone(paramInt, -1);
  }
  
  public void startTone(int paramInt1, int paramInt2)
  {
    startTone(paramInt1, paramInt2, null);
  }
  
  public void startTone(int paramInt1, int paramInt2, Runnable paramRunnable)
  {
    if (paramInt1 == 0) {
      return;
    }
    ISoundService localISoundService = this.soundService;
    if (this.tonePlayer != null) {}
    int i;
    for (boolean bool1 = this.tonePlayer.getToneRule().isLooped();; bool1 = false)
    {
      IRingtoneService.Ringtone localRingtone = localISoundService.getRingtone(paramInt1, bool1, false);
      boolean bool2 = mediaPlayer.isPlaying();
      i = 0;
      if (bool2) {
        mediaPlayer.stop();
      }
      do
      {
        mediaPlayer.reset();
        try
        {
          mediaPlayer.setDataSource(this.soundService.getContext(), localRingtone.m_Uri);
          mediaPlayer.setOnCompletionListener(this);
          mediaPlayer.setLooping(localRingtone.loop());
          mediaPlayer.setAudioStreamType(this._streamType);
          mediaPlayer.setVolume(this._maxVolume, this._maxVolume);
          mediaPlayer.prepare();
          i = 2;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          do
          {
            i++;
          } while (i != 2);
          localIllegalStateException.printStackTrace();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      } while (i < 2);
      this.callback = paramRunnable;
      this.soundService.setMode(this._modeSet, mediaStarter.start(this, paramInt2));
      return;
    }
  }
  
  public void stopTone()
  {
    if (!mediaPlayer.isPlaying()) {}
    while ((this.tonePlayer != null) && (this.tonePlayer.getToneRule().isUrgent()) && (mediaPlayer.getDuration() > 0)) {
      return;
    }
    _stop();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.MediaToneGenerator
 * JD-Core Version:    0.7.0.1
 */