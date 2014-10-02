package com.viber.voip.contacts.ui;

import com.viber.voip.ViberApplication;
import com.viber.voip.block.i;
import com.viber.voip.block.n;
import com.viber.voip.contacts.b.e;
import com.viber.voip.registration.cp;
import com.viber.voip.util.ai;
import com.viber.voip.util.hd;

class an
  implements ai
{
  an(al paramal, e parame, n paramn) {}
  
  public void a(String paramString) {}
  
  public void a(boolean paramBoolean, String paramString)
  {
    String str1 = hd.a(ViberApplication.getInstance(), paramString, paramString);
    String str2 = ViberApplication.getInstance().getRegistrationValues().f();
    if ((str1 != null) && (str1.equals(str2)))
    {
      al.a(this.c).k();
      return;
    }
    i.a(this.c.getActivity(), this.a.a(), str1, true, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.an
 * JD-Core Version:    0.7.0.1
 */