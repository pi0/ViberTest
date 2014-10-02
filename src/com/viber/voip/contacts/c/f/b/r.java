package com.viber.voip.contacts.c.f.b;

import com.viber.jni.PhoneControllerDelegate;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.f.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.cp;
import com.viber.voip.user.UserData;
import com.viber.voip.util.aj;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class r
  extends a
  implements p
{
  protected static final String a = r.class.getSimpleName();
  protected boolean b;
  protected boolean c;
  protected final ViberApplication d;
  protected final HardwareParameters e;
  protected final q f;
  protected final u g;
  protected final ah h;
  protected final com.viber.voip.contacts.c.f.a i;
  protected final PhoneController j;
  
  protected r(ViberApplication paramViberApplication, q paramq)
  {
    this.d = paramViberApplication;
    this.f = paramq;
    this.g = u.a(paramViberApplication);
    this.h = new ah(this.g);
    this.i = com.viber.voip.contacts.c.f.a.a(paramViberApplication);
    this.j = ViberApplication.getInstance().getPhoneController(false);
    this.e = this.d.getHardwareParameters();
    this.b = this.i.c();
  }
  
  public final PhoneControllerDelegate a()
  {
    return new h(dc.a(dk.c), new PhoneControllerDelegateAdapter[] { this });
  }
  
  public void a(e parame) {}
  
  public final void a(f paramf)
  {
    paramf.f().size();
    ak localak = this.h.a(paramf);
    if (localak.a()) {
      this.f.a(localak.e, localak.d, localak.b);
    }
    if (localak.b())
    {
      this.f.a(localak.c, localak.e.keySet(), localak.b);
      com.viber.service.contacts.sync.a.a().c();
    }
    for (;;)
    {
      if (this.b)
      {
        this.b = false;
        this.i.a(4);
      }
      if (this.j == null) {
        return;
      }
      if (!(paramf instanceof e)) {
        break;
      }
      byte[] arrayOfByte = aj.a(this.e.getUdid());
      Iterator localIterator2 = paramf.h().iterator();
      while (localIterator2.hasNext())
      {
        g localg2 = (g)localIterator2.next();
        this.j.handleSendAddressBookForSecondaryAck(arrayOfByte, localg2.c, localg2.b, localg2.e);
      }
      if (localak.a) {
        this.f.l();
      }
    }
    Iterator localIterator1 = paramf.h().iterator();
    while (localIterator1.hasNext())
    {
      g localg1 = (g)localIterator1.next();
      if (localg1.d != 0) {
        this.j.handleSendRegisteredNumbersAck(localg1.d, false);
      }
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    ak localak = this.h.a(paramString1, System.currentTimeMillis());
    this.f.a(localak.c, localak.e.keySet(), localak.b);
    b.a(this.d).a(localak.f);
    com.viber.voip.e.u.a().a(this.d.isOnForeground(), paramString1, paramString3);
  }
  
  public void a(boolean paramBoolean) {}
  
  public int b()
  {
    return 0;
  }
  
  @Deprecated
  public void c() {}
  
  protected abstract void d();
  
  public void e() {}
  
  public void onRecanonize(String paramString)
  {
    try
    {
      String str = this.d.getRegistrationValues().e();
      this.d.getRegistrationValues().a(paramString);
      UserData.notifyOwnerChange();
      this.g.b(this.d);
      this.d.getMessagesManager().c().a(paramString, new s(this, str));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public final void onServiceStateChanged(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: getstatic 294	com/viber/jni/PhoneControllerDelegate$ViberConnectionState:SERVICE_CONNECTED	Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    //   6: invokevirtual 297	com/viber/jni/PhoneControllerDelegate$ViberConnectionState:ordinal	()I
    //   9: if_icmpne +17 -> 26
    //   12: iconst_1
    //   13: istore_3
    //   14: aload_0
    //   15: iload_3
    //   16: putfield 299	com/viber/voip/contacts/c/f/b/r:c	Z
    //   19: aload_0
    //   20: invokevirtual 301	com/viber/voip/contacts/c/f/b/r:d	()V
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: iconst_0
    //   27: istore_3
    //   28: goto -14 -> 14
    //   31: astore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_2
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	r
    //   0	36	1	paramInt	int
    //   31	4	2	localObject	Object
    //   13	15	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	12	31	finally
    //   14	23	31	finally
  }
  
  public void onShareAddressBook() {}
  
  public void onShareAddressBookReply(boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public final void onShouldRegister()
  {
    if (this.f != null) {
      this.f.n();
    }
  }
  
  public boolean onUnregisteredNumber(String paramString)
  {
    ak localak = this.h.a(paramString);
    this.f.a(localak.e, localak.d, localak.b);
    this.f.a(localak.c, localak.e.keySet(), localak.b);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.r
 * JD-Core Version:    0.7.0.1
 */