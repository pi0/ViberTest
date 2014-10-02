package com.viber.voip.sound.tonegen;

import android.content.Context;
import android.media.SoundPool;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.CommonAbstractSoundService;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class PooledMediaToneGenerator
  implements IToneGenerator
{
  public static final String TAG = PooledMediaToneGenerator.class.getSimpleName();
  private static final Map<Integer, Integer> mediaHash = Collections.synchronizedMap(new HashMap());
  private static final SoundPool mediaPool;
  private static volatile int nowPlaying = -1;
  private volatile int _mode = 0;
  private volatile float _volume = 0.0F;
  private final Context context;
  private volatile int pending = 0;
  
  static
  {
    mediaPool = new SoundPool(1, ViberApplication.getInstance().getSoundService().stream_Dtmf(), 0);
  }
  
  public PooledMediaToneGenerator(ISoundService paramISoundService, int paramInt1, int paramInt2, float paramFloat, int[] paramArrayOfInt)
  {
    this.context = paramISoundService.getContext();
    this._volume = paramFloat;
    if (paramArrayOfInt != null) {
      loadSamples(paramArrayOfInt);
    }
  }
  
  public int getSoundId(int paramInt)
  {
    try
    {
      int i = ((Integer)mediaHash.get(Integer.valueOf(paramInt))).intValue();
      return i;
    }
    catch (NullPointerException localNullPointerException) {}
    return -1;
  }
  
  public void loadSamples(int[] paramArrayOfInt)
  {
    this.pending += paramArrayOfInt.length;
    int i = paramArrayOfInt.length;
    int j = 0;
    for (;;)
    {
      if (j < i)
      {
        int k = paramArrayOfInt[j];
        SoundFactory.log(3, TAG, "loading resId#" + k);
        try
        {
          mediaHash.put(Integer.valueOf(k), Integer.valueOf(mediaPool.load(this.context, k, 1)));
          j++;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
      }
    }
  }
  
  public void onModeStateChangeDeferred(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "PooledMediaToneGenerator got defer signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
  }
  
  public void onModeStateChangeRejected(int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.log(5, TAG, "PooledMediaToneGenerator got reject signal for mode state from " + CommonAbstractSoundService.getModeName(paramInt2) + " to " + CommonAbstractSoundService.getModeName(paramInt3) + ", reason " + paramInt1);
  }
  
  public void onModeStateChanged(int paramInt) {}
  
  public void onModeStatePreChanged(int paramInt)
  {
    if (paramInt != this._mode) {
      stopTone();
    }
  }
  
  public void startTone(int paramInt)
  {
    startTone(paramInt, 0);
  }
  
  public void startTone(int paramInt1, int paramInt2)
  {
    startTone(paramInt1, paramInt2, null);
  }
  
  public void startTone(int paramInt1, int paramInt2, Runnable paramRunnable)
  {
    int i = getSoundId(paramInt1);
    if (-1 == i)
    {
      SoundFactory.log(3, TAG, "no sample for resource#" + paramInt1 + " found preloaded");
      return;
    }
    SoundFactory.log(3, TAG, "scheduling sample#" + i + "/res#" + paramInt1 + " for playing");
    nowPlaying = mediaPool.play(i, this._volume, this._volume, 1, 0, 1.0F);
  }
  
  public void stopTone()
  {
    mediaPool.stop(nowPlaying);
    nowPlaying = -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.PooledMediaToneGenerator
 * JD-Core Version:    0.7.0.1
 */