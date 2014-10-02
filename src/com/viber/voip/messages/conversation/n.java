package com.viber.voip.messages.conversation;

import com.viber.provider.e;
import com.viber.voip.messages.controller.c.ao;
import java.util.ArrayList;

class n
  implements Runnable
{
  n(m paramm, ao paramao, ArrayList paramArrayList) {}
  
  public void run()
  {
    if ((this.a.a() != null) && (this.a.a().equals(this.c.a.j)))
    {
      this.c.a.l = this.b;
      if (i.c(this.c.a) != null) {
        i.d(this.c.a).a(this.c.a, false);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.n
 * JD-Core Version:    0.7.0.1
 */