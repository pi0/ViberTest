package com.viber.voip.user;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.dh;
import java.util.Set;

class YouFragment$1
  implements dh
{
  YouFragment$1(YouFragment paramYouFragment) {}
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void onChangeOwner()
  {
    dc.a(dk.a).post(new YouFragment.1.1(this));
  }
  
  public void onInitCache() {}
  
  public void onNewInfo(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouFragment.1
 * JD-Core Version:    0.7.0.1
 */