package com.viber.voip.sound;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import com.viber.voip.sound.tonegen.DtmfToneGenerator;
import com.viber.voip.sound.tonegen.IToneGenerator;
import com.viber.voip.sound.tonegen.MediaToneGenerator;
import com.viber.voip.sound.tonegen.TonePlayer;
import com.viber.voip.sound.tonegen.ToneRule;

public abstract class ToneGeneratorFactory
{
  private static Object _monitor;
  private static IToneGenerator dtmfGenerator;
  private static AbstractSoundService soundService;
  private static IToneGenerator toneGenerator;
  private static Handler tonegenSharedPlayHandler;
  private static HandlerThread tonegenSharedPlayHandlerThread;
  private static Object[] tonesMap;
  
  static
  {
    if (!ToneGeneratorFactory.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      _monitor = new Object();
      soundService = null;
      return;
    }
  }
  
  public static ToneGeneratorFactory.ToneType convert(int paramInt)
  {
    if (1 == paramInt) {
      return ToneGeneratorFactory.ToneType.BUSY_TONE;
    }
    if (2 == paramInt) {
      return ToneGeneratorFactory.ToneType.RINGBACK_TONE;
    }
    if (3 == paramInt) {
      return ToneGeneratorFactory.ToneType.HANGUP_TONE;
    }
    if (4 == paramInt) {
      return ToneGeneratorFactory.ToneType.HOLD_TONE;
    }
    if (5 == paramInt) {
      return ToneGeneratorFactory.ToneType.DATA_INTERRUPTION_TONE;
    }
    return ToneGeneratorFactory.ToneType.NO_TONE;
  }
  
  public static void ensureStopCommonTone(ToneGeneratorFactory.ToneType paramToneType)
  {
    synchronized (_monitor)
    {
      TonePlayer localTonePlayer = getTonePlayer(paramToneType);
      if (localTonePlayer == null) {
        return;
      }
      localTonePlayer.stop();
      return;
    }
  }
  
  public static int getDTMFToneId(int paramInt)
  {
    int i;
    switch (paramInt)
    {
    default: 
      i = 0;
    }
    for (;;)
    {
      return i;
      i = 2131099652;
      continue;
      i = 2131099653;
      continue;
      i = 2131099654;
      continue;
      i = 2131099655;
      continue;
      i = 2131099656;
      continue;
      i = 2131099657;
      continue;
      i = 2131099658;
      continue;
      i = 2131099659;
      continue;
      i = 2131099660;
      continue;
      i = 2131099661;
      continue;
      i = 2131099649;
      continue;
      i = 2131099668;
    }
  }
  
  public static TonePlayer getTonePlayer(ToneGeneratorFactory.ToneType paramToneType)
  {
    for (;;)
    {
      int j;
      synchronized (_monitor)
      {
        Object[] arrayOfObject = tonesMap;
        int i = arrayOfObject.length;
        j = 0;
        if (j < i)
        {
          Pair localPair = (Pair)arrayOfObject[j];
          if ((localPair != null) && (paramToneType == localPair.first))
          {
            TonePlayer localTonePlayer = (TonePlayer)localPair.second;
            return localTonePlayer;
          }
        }
        else
        {
          return null;
        }
      }
      j++;
    }
  }
  
  public static void init(AbstractSoundService paramAbstractSoundService)
  {
    if (soundService != null) {
      return;
    }
    soundService = paramAbstractSoundService;
    tonegenSharedPlayHandlerThread = new HandlerThread("tonePlayer");
    tonegenSharedPlayHandlerThread.start();
    dtmfGenerator = new DtmfToneGenerator(soundService, soundService.mode_Dtmf(), soundService.stream_Dtmf(), 0.1F);
    tonegenSharedPlayHandler = new Handler(tonegenSharedPlayHandlerThread.getLooper());
    synchronized (_monitor)
    {
      Object[] arrayOfObject = new Object[6];
      arrayOfObject[0] = new Pair(ToneGeneratorFactory.ToneType.NO_TONE, null);
      arrayOfObject[1] = new Pair(ToneGeneratorFactory.ToneType.BUSY_TONE, new TonePlayer(soundService, tonegenSharedPlayHandler, new ToneRule("BUSY", new int[] { 2131099650 }, new int[] { 800 }, -1), new ToneGeneratorFactory.1()));
      arrayOfObject[2] = new Pair(ToneGeneratorFactory.ToneType.RINGBACK_TONE, new TonePlayer(soundService, tonegenSharedPlayHandler, new ToneRule("RINGBACK", new int[] { 2131099672 }, new int[] { 3000 }, -1), new ToneGeneratorFactory.2()));
      arrayOfObject[3] = new Pair(ToneGeneratorFactory.ToneType.HANGUP_TONE, new TonePlayer(soundService, tonegenSharedPlayHandler, new ToneRule("HANGUP", new int[] { 2131099651 }, new int[] { 1500 }, 0, true), new ToneGeneratorFactory.3()));
      arrayOfObject[4] = new Pair(ToneGeneratorFactory.ToneType.HOLD_TONE, new TonePlayer(soundService, tonegenSharedPlayHandler, new ToneRule("HOLD", new int[] { 2131099664 }, new int[] { 4000 }, -1), new ToneGeneratorFactory.4()));
      arrayOfObject[5] = new Pair(ToneGeneratorFactory.ToneType.DATA_INTERRUPTION_TONE, new TonePlayer(soundService, tonegenSharedPlayHandler, new ToneRule("DATA_INTERRUPTION", new int[] { 2131099664 }, new int[] { 4000 }, -1), new ToneGeneratorFactory.5()));
      tonesMap = arrayOfObject;
      return;
    }
  }
  
  public static IToneGenerator newDTMFToneGenerator(CommonAbstractSoundService paramCommonAbstractSoundService)
  {
    Object localObject1 = _monitor;
    if (paramCommonAbstractSoundService != null) {}
    try
    {
      soundService = paramCommonAbstractSoundService;
      if (dtmfGenerator != null)
      {
        dtmfGenerator.stopTone();
        IToneGenerator localIToneGenerator2 = dtmfGenerator;
        return localIToneGenerator2;
      }
      if (dtmfGenerator == null) {
        dtmfGenerator = new DtmfToneGenerator(paramCommonAbstractSoundService, paramCommonAbstractSoundService.mode_Dtmf(), paramCommonAbstractSoundService.stream_Dtmf(), 0.1F);
      }
      IToneGenerator localIToneGenerator1 = dtmfGenerator;
      return localIToneGenerator1;
    }
    finally {}
  }
  
  public static IToneGenerator newToneGenerator(AbstractSoundService paramAbstractSoundService)
  {
    assert (paramAbstractSoundService != null);
    Object localObject1 = _monitor;
    if (paramAbstractSoundService != null) {}
    try
    {
      soundService = paramAbstractSoundService;
      if (toneGenerator == null) {
        toneGenerator = new MediaToneGenerator(paramAbstractSoundService, paramAbstractSoundService.mode_Tone(), paramAbstractSoundService.stream_Tone(), 0.5F);
      }
      IToneGenerator localIToneGenerator = toneGenerator;
      return localIToneGenerator;
    }
    finally {}
  }
  
  /* Error */
  public static void releaseDtmfGenerator()
  {
    // Byte code:
    //   0: getstatic 34	com/viber/voip/sound/ToneGeneratorFactory:_monitor	Ljava/lang/Object;
    //   3: astore_0
    //   4: aload_0
    //   5: monitorenter
    //   6: getstatic 125	com/viber/voip/sound/ToneGeneratorFactory:dtmfGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   9: ifnonnull +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: getstatic 125	com/viber/voip/sound/ToneGeneratorFactory:dtmfGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   18: invokeinterface 186 1 0
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    //   31: astore_3
    //   32: aload_3
    //   33: athrow
    //   34: astore_2
    //   35: goto -12 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   3	25	0	localObject1	Object
    //   26	4	1	localObject2	Object
    //   34	1	2	localRuntimeException	java.lang.RuntimeException
    //   31	2	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   6	14	26	finally
    //   23	25	26	finally
    //   27	29	26	finally
    //   32	34	26	finally
    //   15	23	31	finally
    //   15	23	34	java/lang/RuntimeException
  }
  
  /* Error */
  public static void releaseToneGenerator(com.viber.voip.sound.tonegen.ToneGenerator paramToneGenerator)
  {
    // Byte code:
    //   0: getstatic 34	com/viber/voip/sound/ToneGeneratorFactory:_monitor	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: aload_0
    //   7: ifnonnull +6 -> 13
    //   10: aload_1
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: invokevirtual 215	com/viber/voip/sound/tonegen/ToneGenerator:stopTone	()V
    //   17: aload_1
    //   18: monitorexit
    //   19: return
    //   20: astore_2
    //   21: aload_1
    //   22: monitorexit
    //   23: aload_2
    //   24: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	25	0	paramToneGenerator	com.viber.voip.sound.tonegen.ToneGenerator
    //   3	19	1	localObject1	Object
    //   20	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	12	20	finally
    //   13	19	20	finally
    //   21	23	20	finally
  }
  
  public static void stopCommonTones()
  {
    for (;;)
    {
      int j;
      synchronized (_monitor)
      {
        Object[] arrayOfObject = tonesMap;
        int i = arrayOfObject.length;
        j = 0;
        if (j < i)
        {
          Pair localPair = (Pair)arrayOfObject[j];
          if ((localPair == null) || (localPair.second == null)) {
            break label69;
          }
          ((TonePlayer)localPair.second).stop();
        }
      }
      return;
      label69:
      j++;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.ToneGeneratorFactory
 * JD-Core Version:    0.7.0.1
 */