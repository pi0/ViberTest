package com.viber.voip.messages.conversation;

import com.viber.voip.messages.controller.dh;
import java.util.Set;

class f
  implements dh
{
  f(d paramd) {}
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean)
  {
    if (paramSet.contains(Long.valueOf(d.a(this.a)))) {
      this.a.g();
    }
  }
  
  public void onChangeOwner() {}
  
  public void onInitCache() {}
  
  public void onNewInfo(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.f
 * JD-Core Version:    0.7.0.1
 */