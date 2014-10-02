package com.viber.voip.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.stickers.e.c;

class r
  extends BroadcastReceiver
{
  r(q paramq) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a.onNewStickerPackageCountChanged(c.a());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.r
 * JD-Core Version:    0.7.0.1
 */