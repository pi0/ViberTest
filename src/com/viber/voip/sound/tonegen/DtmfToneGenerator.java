package com.viber.voip.sound.tonegen;

import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;

public class DtmfToneGenerator
  extends ToneGenerator
{
  public static final String TAG = DtmfToneGenerator.class.getSimpleName();
  private static final boolean USE_POOLED_DTMF_TONES_INTERNAL = true;
  private static final int[] dtmfPreloadSamplesIds = { 2131099652, 2131099653, 2131099654, 2131099655, 2131099656, 2131099657, 2131099658, 2131099659, 2131099660, 2131099661, 2131099649, 2131099668 };
  static volatile DtmfToneGenerator.ModeReverter modeReverter = new DtmfToneGenerator.ModeReverter();
  IToneGenerator mediaGenerator;
  private final ISoundService soundService;
  
  public DtmfToneGenerator(ISoundService paramISoundService, int paramInt1, int paramInt2, float paramFloat)
  {
    super(paramISoundService, paramInt1, paramInt2);
    this.soundService = paramISoundService;
    this.mediaGenerator = new PooledMediaToneGenerator(paramISoundService, paramInt1, paramInt2, paramFloat, dtmfPreloadSamplesIds);
  }
  
  protected void repostCallbackAfter(Runnable paramRunnable, int paramInt)
  {
    if (paramRunnable != null) {
      super.repostCallbackAfter(paramRunnable, paramInt + 1000);
    }
  }
  
  public void startTone(int paramInt1, int paramInt2)
  {
    startTone(paramInt1, paramInt2, modeReverter.revertTo(this.soundService, this.soundService.mode_Normal()));
  }
  
  public void startTone(int paramInt1, int paramInt2, Runnable paramRunnable)
  {
    SoundFactory.log(3, TAG, "scheduling DTMF tone #" + paramInt1 + "/ duration " + paramInt2 + "/ callback=" + paramRunnable);
    this.soundService.setMode(this.soundService.mode_Dtmf(), new DtmfToneGenerator.1(this, paramInt1, paramInt2, paramRunnable), 1);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.DtmfToneGenerator
 * JD-Core Version:    0.7.0.1
 */