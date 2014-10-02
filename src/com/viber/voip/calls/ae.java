package com.viber.voip.calls;

import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.calls.entities.impl.g;
import com.viber.voip.contacts.b.b.a.a;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.contacts.c.d.as;
import com.viber.voip.messages.controller.x;
import com.viber.voip.registration.cp;
import java.util.Collection;
import java.util.Iterator;

class ae
  implements as
{
  ae(z paramz, long paramLong1, String paramString1, String paramString2, int paramInt1, long paramLong2, String paramString3, long paramLong3, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, w paramw, int paramInt5) {}
  
  public void a(Collection<k> paramCollection)
  {
    k localk;
    g localg;
    String str1;
    long l1;
    boolean bool1;
    int i1;
    if (paramCollection.size() > 0)
    {
      localk = (k)paramCollection.iterator().next();
      localg = new g();
      localg.a(this.a);
      localg.a(this.b);
      localg.d(this.c);
      localg.b(this.d);
      localg.b(this.e);
      if (localk != null)
      {
        String str3 = localk.m().a();
        Uri localUri = ContactsContract.Contacts.getLookupUri(localk.m().getId(), localk.m().g());
        long l2 = localk.l().getId();
        localg.a(str3);
        localg.c(l2);
        String str4 = null;
        if (localUri != null) {
          str4 = localUri.toString();
        }
        localg.c(str4);
        localg.b(localk.e());
        localg.a(localk.d());
      }
      str1 = this.f;
      l1 = this.g;
      bool1 = this.h;
      i1 = this.i;
      if (this.d == 3) {
        break label313;
      }
    }
    label313:
    for (boolean bool2 = true;; bool2 = false)
    {
      CallEntityImpl localCallEntityImpl = new CallEntityImpl(str1, l1, bool1, i1, bool2, this.j, this.k, localg);
      z.a(this.n).a(localCallEntityImpl, localg, this.l);
      String str2 = ViberApplication.getInstance().getRegistrationValues().f();
      if ((z.c(this.n) != null) && (localCallEntityImpl.k()) && (!localCallEntityImpl.g().equals(str2))) {
        z.c(this.n).c().a(localCallEntityImpl, this.m);
      }
      return;
      localk = null;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ae
 * JD-Core Version:    0.7.0.1
 */