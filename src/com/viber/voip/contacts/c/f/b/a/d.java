package com.viber.voip.contacts.c.f.b.a;

import android.os.Handler;
import com.viber.jni.CAddressBookInfo;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.f.b.ad;
import java.util.Collection;
import java.util.Map;

class d
  implements ad
{
  d(a parama, boolean paramBoolean) {}
  
  public void a(int paramInt, String paramString, Map<Integer, CAddressBookInfo> paramMap)
  {
    CAddressBookInfo[] arrayOfCAddressBookInfo;
    synchronized (this.b)
    {
      if (!a.o(this.b))
      {
        a.a(this.b, m.f);
        return;
      }
      a.b(this.b, a.p(this.b).generateSequence());
      a.q(this.b).d(a.e(this.b));
      a.r(this.b).c(a.e(this.b));
      arrayOfCAddressBookInfo = (CAddressBookInfo[])paramMap.values().toArray(new CAddressBookInfo[0]);
      if (a.s(this.b) > 1) {
        a.c(this.b, 0);
      }
      if ((!this.a) && (!a.t(this.b))) {
        break label274;
      }
      if (a.u(this.b)) {
        a.w(this.b).postDelayed(a.v(this.b), 30000L);
      }
      int i = ViberApplication.getInstance().getAddressBookVersion();
      a.b(this.b, a.x(this.b).shareAddressBookList(arrayOfCAddressBookInfo, a.e(this.b), i));
      if (a.f(this.b))
      {
        a.a(this.b, paramString);
        a.a(this.b, paramInt);
        return;
      }
    }
    a.a(this.b, "");
    a.a(this.b, 0);
    return;
    label274:
    if (arrayOfCAddressBookInfo.length == 1)
    {
      int j = ViberApplication.getInstance().getAddressBookVersion();
      if (a.y(this.b).shareContact(arrayOfCAddressBookInfo[0], a.e(this.b), j))
      {
        a.a(this.b, a.z(this.b) + "," + paramString);
        a.a(this.b, paramInt + a.k(this.b));
        return;
      }
      a.a(this.b, "");
      a.a(this.b, 0);
      return;
    }
    a.a(this.b, m.g);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.a.d
 * JD-Core Version:    0.7.0.1
 */