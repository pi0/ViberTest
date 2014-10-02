package com.viber.voip;

import android.content.Intent;
import com.viber.voip.contacts.b.b;
import com.viber.voip.messages.j;
import com.viber.voip.util.hd;
import java.util.Iterator;
import java.util.Set;

class bs
  implements com.viber.voip.contacts.c.d.i
{
  bs(SystemDialogActivity paramSystemDialogActivity, String paramString) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    b localb1;
    com.viber.voip.contacts.b.i locali1;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      String str = hd.a(ViberApplication.getInstance(), paramString, paramString);
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        b localb2 = (b)localIterator.next();
        com.viber.voip.contacts.b.i locali2 = localb2.b(str);
        if (locali2 != null)
        {
          localb1 = localb2;
          locali1 = locali2;
        }
      }
    }
    for (;;)
    {
      if ((localb1 == null) || (locali1 == null))
      {
        SystemDialogActivity.a(this.b, this.a);
        return;
      }
      Intent localIntent = j.a(locali1.a(), localb1.getId(), localb1.c(), localb1.a(), null);
      localIntent.setAction("com.viber.voip.action.PRE_CONVERSATION");
      localIntent.putExtra("send_1to1", true);
      this.b.startActivity(localIntent);
      this.b.a(SystemDialogActivity.a(this.b));
      return;
      SystemDialogActivity.a(this.b, this.a);
      return;
      locali1 = null;
      localb1 = null;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bs
 * JD-Core Version:    0.7.0.1
 */