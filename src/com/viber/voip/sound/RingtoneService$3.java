package com.viber.voip.sound;

import android.os.Handler;

class RingtoneService$3
  extends ISoundService.ModeStateListener
{
  RingtoneService$3(RingtoneService paramRingtoneService, IRingtoneService.Ringtone paramRingtone) {}
  
  public void onModeStateChanged(int paramInt)
  {
    SoundFactory.log(3, TAG, "got mode " + CommonAbstractSoundService.getModeName(paramInt) + ": starting ringtone playback");
    RingtoneService.access$100(this.this$0).lockModeChange();
    RingtoneService.access$100(this.this$0).setRouteFlags(8);
    RingtoneService.access$202(this.this$0, this.val$r);
    if (-1 != this.val$r.getDuration())
    {
      RingtoneService.access$300(this.this$0).removeMessages(1);
      RingtoneService.access$300(this.this$0).sendEmptyMessageDelayed(1, this.val$r.getDuration());
    }
    if (this.val$r.getStartPlaybackCallback() != null) {
      this.val$r.getStartPlaybackCallback().run();
    }
    RingtoneService.access$100(this.this$0).startMediaPlayer();
  }
  
  public void onModeStatePreChanged(int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.RingtoneService.3
 * JD-Core Version:    0.7.0.1
 */