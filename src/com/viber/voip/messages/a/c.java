package com.viber.voip.messages.a;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.dh;
import java.util.Set;

class c
  implements dh
{
  c(b paramb) {}
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void onChangeOwner()
  {
    this.a.c();
  }
  
  public void onInitCache() {}
  
  public void onNewInfo(Set<Long> paramSet, boolean paramBoolean)
  {
    b.a(this.a, b.a(this.a).e(paramSet));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.a.c
 * JD-Core Version:    0.7.0.1
 */