package com.viber.voip.sound.bluetooth;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class BTControl$1
  extends BroadcastReceiver
{
  BTControl$1(BTControl paramBTControl) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (("android.media.SCO_AUDIO_STATE_CHANGED".equals(str)) || ("android.media.ACTION_SCO_AUDIO_STATE_UPDATED".equals(str)))
    {
      int i = BTControl.access$000(this.this$0, paramIntent);
      BTControl.access$100("{Bt} {SCO_AUDIO_STATE_CHANGED} scoAudioState=" + BTControl.getStateString(i));
      this.this$0.handleScoStateChange(i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.BTControl.1
 * JD-Core Version:    0.7.0.1
 */