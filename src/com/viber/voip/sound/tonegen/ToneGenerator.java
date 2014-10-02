package com.viber.voip.sound.tonegen;

import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.sound.CommonAbstractSoundService;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import java.util.concurrent.locks.ReentrantLock;

public class ToneGenerator
  implements IToneGenerator
{
  public static final float MAX_DTMF_VOLUME = 0.1F;
  public static final float MAX_TONE_VOLUME = 0.5F;
  public static final String TAG = ToneGenerator.class.getSimpleName();
  protected static final Handler _monitor = dc.a(dk.h);
  private final int _modeSet;
  private final ISoundService _soundService;
  private volatile int _streamType;
  private android.media.ToneGenerator _toneGenerator;
  private final ReentrantLock modeLock = new ReentrantLock();
  
  public ToneGenerator(ISoundService paramISoundService, int paramInt1, int paramInt2)
  {
    this._streamType = paramInt2;
    this._toneGenerator = null;
    this._soundService = paramISoundService;
    this._modeSet = paramInt1;
  }
  
  private static android.media.ToneGenerator getToneGenerator(int paramInt)
  {
    synchronized (_monitor)
    {
      android.media.ToneGenerator localToneGenerator = new android.media.ToneGenerator(paramInt, 100);
      return localToneGenerator;
    }
  }
  
  private void release()
  {
    synchronized (_monitor)
    {
      if (this._toneGenerator != null) {
        this._toneGenerator.release();
      }
      this._toneGenerator = null;
      return;
    }
  }
  
  public void onModeStateChangeDeferred(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "ToneGenerator got defer signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
  }
  
  public void onModeStateChangeRejected(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "ToneGenerator got reject signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
  }
  
  public void onModeStateChanged(int paramInt) {}
  
  public void onModeStatePreChanged(int paramInt)
  {
    if (this._modeSet != paramInt)
    {
      this.modeLock.lock();
      return;
    }
    this.modeLock.unlock();
  }
  
  protected void repostCallbackAfter(Runnable paramRunnable, int paramInt)
  {
    if (paramRunnable == null) {
      return;
    }
    _monitor.removeCallbacks(paramRunnable);
    _monitor.postDelayed(paramRunnable, paramInt);
  }
  
  public void startTone(int paramInt)
  {
    synchronized (_monitor)
    {
      if ((this._soundService == null) || (this._soundService.getMode() != this._modeSet)) {
        return;
      }
      if (this._toneGenerator != null) {
        stopTone();
      }
      this._toneGenerator = getToneGenerator(this._streamType);
      if (this.modeLock.tryLock())
      {
        this._toneGenerator.startTone(paramInt);
        this.modeLock.unlock();
      }
      return;
    }
  }
  
  public void startTone(int paramInt1, int paramInt2)
  {
    startTone(paramInt1, paramInt2, null);
  }
  
  public void startTone(int paramInt1, int paramInt2, Runnable paramRunnable)
  {
    SoundFactory.log(3, TAG, "starting tone #" + paramInt1 + "/ duration " + paramInt2 + "/ callback=" + paramRunnable);
    synchronized (_monitor)
    {
      if ((this._soundService == null) || (this._soundService.getMode() != this._modeSet)) {
        return;
      }
      if (this._toneGenerator != null) {
        stopTone();
      }
      this._toneGenerator = getToneGenerator(this._streamType);
      if (this.modeLock.tryLock())
      {
        SoundFactory.log(3, TAG, "really starting tone #" + paramInt1 + "/ duration " + paramInt2 + "/ callback=" + paramRunnable);
        this._toneGenerator.startTone(paramInt1, paramInt2);
        this.modeLock.unlock();
      }
      if (paramRunnable != null) {
        repostCallbackAfter(paramRunnable, paramInt2);
      }
      return;
    }
  }
  
  public void stopTone()
  {
    synchronized (_monitor)
    {
      if (this._toneGenerator == null) {
        return;
      }
      try
      {
        this._toneGenerator.stopTone();
      }
      catch (RuntimeException localRuntimeException)
      {
        for (;;)
        {
          localRuntimeException.printStackTrace();
          release();
        }
      }
      finally
      {
        release();
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.ToneGenerator
 * JD-Core Version:    0.7.0.1
 */