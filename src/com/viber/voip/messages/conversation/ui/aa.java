package com.viber.voip.messages.conversation.ui;

import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.b.f;
import com.viber.voip.contacts.c.d.i;
import com.viber.voip.viberout.e;
import java.util.Iterator;
import java.util.Set;

class aa
  implements i
{
  aa(m paramm, String paramString, Runnable paramRunnable) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      f localf = ((b)localIterator.next()).q();
      if (this.a.equals(localf.b()))
      {
        e.c().b(localf.c());
        this.b.run();
        return;
      }
    }
    this.b.run();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.aa
 * JD-Core Version:    0.7.0.1
 */