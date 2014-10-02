package com.viber.voip.messages.ui.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.messages.adapters.h;

class aq
  extends BroadcastReceiver
{
  aq(ViewMediaActivity paramViewMediaActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (ViewMediaActivity.a(this.a) != null)
    {
      ViewMediaActivity.a(this.a).notifyDataSetChanged();
      ViewMediaActivity.a(this.a, ViewMediaActivity.b(this.a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.aq
 * JD-Core Version:    0.7.0.1
 */