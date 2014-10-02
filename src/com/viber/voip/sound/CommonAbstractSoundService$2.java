package com.viber.voip.sound;

class CommonAbstractSoundService$2
  extends ISoundService.ModeStateListener
{
  CommonAbstractSoundService$2(CommonAbstractSoundService paramCommonAbstractSoundService, boolean paramBoolean) {}
  
  public void onModeStateChanged(int paramInt)
  {
    if (!this.val$startNative) {
      return;
    }
    SoundFactory.log(3, TAG, "starting native VVE media thread");
    this.this$0.resumeSound(this.this$0.shouldKillMediaManagerOnSuspend());
  }
  
  public void onModeStatePreChanged(int paramInt)
  {
    this.this$0.lockModeChange();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.2
 * JD-Core Version:    0.7.0.1
 */