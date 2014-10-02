package com.viber.voip.contacts.ui;

import com.viber.voip.contacts.d.a;
import com.viber.voip.contacts.d.b;
import com.viber.voip.util.ai;
import java.util.List;

class k
  implements ai
{
  k(ContactDetailsFragment paramContactDetailsFragment, b paramb) {}
  
  public void a(String paramString) {}
  
  public void a(boolean paramBoolean, String paramString)
  {
    List localList = ContactDetailsFragment.a(this.b, ContactDetailsFragment.s(this.b), this.a, paramString);
    if (localList.size() > 0)
    {
      a locala = (a)localList.get(0);
      ContactDetailsFragment.b(this.b, locala);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.k
 * JD-Core Version:    0.7.0.1
 */