package com.viber.voip.messages.conversation;

import com.viber.voip.messages.controller.dh;
import java.util.Set;

class al
  implements dh
{
  al(ai paramai) {}
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean)
  {
    if (paramSet.contains(Long.valueOf(this.a.i))) {
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
 * Qualified Name:     com.viber.voip.messages.conversation.al
 * JD-Core Version:    0.7.0.1
 */