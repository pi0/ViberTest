package com.viber.voip.messages.conversation;

import android.util.Log;
import com.viber.voip.messages.controller.dh;
import java.util.Set;

class aq
  implements dh
{
  aq(ap paramap) {}
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean)
  {
    Log.d("ParticipantLoader", "onChange");
    if (paramSet.contains(Long.valueOf(ap.a(this.a)))) {
      this.a.g();
    }
  }
  
  public void onChangeOwner()
  {
    this.a.g();
  }
  
  public void onInitCache()
  {
    this.a.g();
  }
  
  public void onNewInfo(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.aq
 * JD-Core Version:    0.7.0.1
 */