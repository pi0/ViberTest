package com.viber.voip.contacts.ui;

import android.os.Handler;
import com.viber.voip.contacts.c.d.i;
import java.util.Iterator;
import java.util.Set;

class r
  implements i
{
  r(ContactDetailsFragment paramContactDetailsFragment) {}
  
  public void a(String paramString, Set<com.viber.voip.contacts.b.b> paramSet)
  {
    com.viber.voip.contacts.b.b localb1;
    com.viber.voip.contacts.b.b localb3;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      localb1 = (com.viber.voip.contacts.b.b)paramSet.iterator().next();
      Iterator localIterator = paramSet.iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localb3 = (com.viber.voip.contacts.b.b)localIterator.next();
      } while ((ContactDetailsFragment.d(this.a) != null) && (!ContactDetailsFragment.d(this.a).equals(localb3.a())));
    }
    for (com.viber.voip.contacts.b.b localb2 = localb3;; localb2 = localb1)
    {
      ContactDetailsFragment.a(this.a, false);
      ContactDetailsFragment.f(this.a).a(localb2.getId(), localb2.c(), localb2.g(), ContactDetailsFragment.e(this.a), this.a);
      return;
      if (!ContactDetailsFragment.g(this.a))
      {
        ContactDetailsFragment.a(this.a, true);
        ContactDetailsFragment.i(this.a).post(new s(this));
      }
      ContactDetailsFragment.f(this.a).a(paramString, ContactDetailsFragment.e(this.a), this.a);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.r
 * JD-Core Version:    0.7.0.1
 */