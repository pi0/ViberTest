package com.viber.voip.contacts.c.f.b.b;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.contacts.c.d.c;
import com.viber.voip.contacts.c.f.b.ah;
import com.viber.voip.contacts.c.f.b.aj;
import com.viber.voip.contacts.c.f.b.e;
import com.viber.voip.contacts.c.f.b.q;
import com.viber.voip.contacts.c.f.b.r;

public class a
  extends r
{
  private static final String k = a.class.getSimpleName();
  private c l;
  
  public a(ViberApplication paramViberApplication, q paramq, c paramc)
  {
    super(paramViberApplication, paramq);
    this.l = paramc;
  }
  
  public void a(e parame)
  {
    aj localaj = this.h.a(parame);
    if (localaj.a()) {
      com.viber.service.contacts.sync.a.a().c();
    }
    this.d.getParticipantManager().a(localaj.d);
    this.d.getContactManager().b(true);
    this.f.l();
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
  }
  
  protected void d() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.b.a
 * JD-Core Version:    0.7.0.1
 */