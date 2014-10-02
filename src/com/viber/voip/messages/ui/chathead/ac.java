package com.viber.voip.messages.ui.chathead;

import android.widget.FrameLayout;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.ui.chathead.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

class ac
  implements Runnable
{
  ac(ab paramab, Set paramSet) {}
  
  public void run()
  {
    Iterator localIterator = d.t(this.b.a).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if ((localb.b() != null) && (this.a.contains(Long.valueOf(localb.b().getId()))))
      {
        localb.a().setShowBadge(false);
        localb.a().a();
        d.j(this.b.a).invalidate();
        if ((d.n(this.b.a)) && (!d.ac(this.b.a)))
        {
          d.i(this.b.a).setShowBadge(false);
          d.j(this.b.a).setVisibility(4);
          d.k(this.b.a, true);
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ac
 * JD-Core Version:    0.7.0.1
 */