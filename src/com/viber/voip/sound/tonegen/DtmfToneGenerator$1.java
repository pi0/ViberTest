package com.viber.voip.sound.tonegen;

import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.ISoundService.ModeStateListener;

class DtmfToneGenerator$1
  extends ISoundService.ModeStateListener
{
  DtmfToneGenerator$1(DtmfToneGenerator paramDtmfToneGenerator, int paramInt1, int paramInt2, Runnable paramRunnable) {}
  
  public void onModeStateChanged(int paramInt)
  {
    if (paramInt != DtmfToneGenerator.access$000(this.this$0).mode_Dtmf()) {
      return;
    }
    this.this$0.mediaGenerator.startTone(this.val$toneId, 0, null);
    this.this$0.repostCallbackAfter(this.val$callback, this.val$durationMs);
  }
  
  public void onModeStatePreChanged(int paramInt) {}
  
  public String toString()
  {
    return "DTMF audio route listener";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.DtmfToneGenerator.1
 * JD-Core Version:    0.7.0.1
 */