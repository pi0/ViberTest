package com.viber.voip.messages.conversation;

import com.viber.provider.e;
import com.viber.voip.messages.i;

class y
  implements e
{
  y(w paramw) {}
  
  public void a(com.viber.provider.b paramb)
  {
    if (w.a(this.a) != null) {
      w.a(this.a).a();
    }
  }
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    w.c(this.a);
    h localh = w.d(this.a).e(0);
    if (w.a(this.a) != null) {
      w.a(this.a).a(localh, paramBoolean, false);
    }
    if ((localh != null) && (!localh.l()) && (paramBoolean)) {
      w.e(this.a).a().b(localh.a());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.y
 * JD-Core Version:    0.7.0.1
 */