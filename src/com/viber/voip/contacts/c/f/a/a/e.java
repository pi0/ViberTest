package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.ViberApplication;
import java.util.Set;

class e
  implements h
{
  e(a parama, Set paramSet, h paramh) {}
  
  public void a(boolean paramBoolean)
  {
    ViberApplication.getInstance().getParticipantManager().b(this.a);
    if (this.b != null) {
      this.b.a(paramBoolean);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.e
 * JD-Core Version:    0.7.0.1
 */