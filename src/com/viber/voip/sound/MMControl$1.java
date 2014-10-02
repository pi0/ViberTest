package com.viber.voip.sound;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class MMControl$1
  extends BroadcastReceiver
{
  MMControl$1(MMControl paramMMControl) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    SoundFactory.log(3, MMControl.TAG, "got broadcast in dummyReceiver: ordered? " + isOrderedBroadcast() + "; sticky? " + isInitialStickyBroadcast() + "; action=" + paramIntent.getAction());
    if ("com.android.music.playbackcomplete".equals(paramIntent.getAction())) {
      MMControl.access$002(this.this$0, false);
    }
    MMControl.access$102(this.this$0, true);
    if (paramIntent.hasExtra("playing"))
    {
      MMControl.access$002(this.this$0, paramIntent.getBooleanExtra("playing", false));
      return;
    }
    if ("musicPlayer.service.updatePlayInfo".equals(paramIntent.getAction()))
    {
      MMControl.access$002(this.this$0, MMControl.access$200(this.this$0, true));
      return;
    }
    if ("com.android.music.playstatechanged".equals(paramIntent.getAction()))
    {
      MMControl.access$002(this.this$0, MMControl.access$200(this.this$0, false));
      return;
    }
    if ("com.htc.music.playstatechanged".equals(paramIntent.getAction()))
    {
      MMControl.access$002(this.this$0, MMControl.access$200(this.this$0, false));
      return;
    }
    MMControl.access$002(this.this$0, "pause".equals(paramIntent.getStringExtra("command")));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.MMControl.1
 * JD-Core Version:    0.7.0.1
 */