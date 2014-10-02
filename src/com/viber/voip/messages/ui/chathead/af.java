package com.viber.voip.messages.ui.chathead;

import android.os.Handler;
import android.util.Log;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.dh;
import java.util.Set;

class af
  implements dh
{
  af(d paramd) {}
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean)
  {
    Log.i(d.c(), "onChange: " + String.valueOf(paramSet));
    dc.a(dk.a).post(new ag(this, paramSet));
  }
  
  public void onChangeOwner()
  {
    Log.i(d.c(), "onChangeOwner: ");
  }
  
  public void onInitCache()
  {
    Log.i(d.c(), "onInitCache: ");
  }
  
  public void onNewInfo(Set<Long> paramSet, boolean paramBoolean)
  {
    Log.i(d.c(), "onNewInfo: " + String.valueOf(paramSet));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.af
 * JD-Core Version:    0.7.0.1
 */