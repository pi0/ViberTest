package com.viber.voip.messages.controller.a;

import com.viber.voip.e.u;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.cr;
import java.util.Set;

class l
  implements Runnable
{
  l(k paramk) {}
  
  public void run()
  {
    as localas = this.a.a.f;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "3";
    arrayOfString[1] = (u.a().h() + "");
    Set localSet = localas.a("conversation_type= ? AND _id != ?", arrayOfString);
    if (localSet.size() > 0) {
      j.a(this.a.a).a(localSet, null);
    }
    this.a.a.f.z();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.l
 * JD-Core Version:    0.7.0.1
 */