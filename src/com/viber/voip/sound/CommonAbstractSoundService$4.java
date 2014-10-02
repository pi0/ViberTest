package com.viber.voip.sound;

class CommonAbstractSoundService$4
  extends ISoundService.ModeStateListener
{
  CommonAbstractSoundService$4(CommonAbstractSoundService paramCommonAbstractSoundService) {}
  
  public void onModeStateChanged(int paramInt)
  {
    this.this$0.lockModeChange();
  }
  
  public void onModeStatePreChanged(int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.4
 * JD-Core Version:    0.7.0.1
 */