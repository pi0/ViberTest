package com.viber.voip.messages.ui;

import android.os.Handler;
import android.view.ContextMenu;
import com.viber.voip.contacts.b.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.registration.dj;
import java.util.Set;

class i
  implements com.viber.voip.contacts.c.d.i
{
  i(h paramh, ContextMenu paramContextMenu) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    if ((dj.d()) || ((paramSet != null) && (!paramSet.isEmpty()))) {
      dc.a(dk.a).post(new j(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.i
 * JD-Core Version:    0.7.0.1
 */