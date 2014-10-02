package com.viber.voip.sound;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class CommonAbstractSoundService$HeadphonePlugStateListener
  extends BroadcastReceiver
{
  CommonAbstractSoundService$HeadphonePlugStateListener(CommonAbstractSoundService paramCommonAbstractSoundService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!"android.intent.action.HEADSET_PLUG".equals(paramIntent.getAction())) {
      return;
    }
    int i = paramIntent.getIntExtra("state", 0);
    SoundFactory.log(3, CommonAbstractSoundService.TAG, "headphones state broadcast intent recieved. State = " + i);
    if (i != 0)
    {
      this.this$0.setRouteFlags(32);
      this.this$0.onHeadsetPlug();
    }
    for (;;)
    {
      CommonAbstractSoundService localCommonAbstractSoundService = this.this$0;
      boolean bool = false;
      if (i != 0) {
        bool = true;
      }
      localCommonAbstractSoundService.notifyHeadphonesConnectionChange(bool);
      return;
      this.this$0.clearRouteFlags(32);
      this.this$0.onHeadsetUnplug();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService.HeadphonePlugStateListener
 * JD-Core Version:    0.7.0.1
 */