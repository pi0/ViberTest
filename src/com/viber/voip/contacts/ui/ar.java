package com.viber.voip.contacts.ui;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.viber.voip.contacts.a.l;
import com.viber.voip.contacts.b.e;

class ar
  implements Runnable
{
  ar(ap paramap, View paramView, e parame) {}
  
  public void run()
  {
    l locall = (l)this.a.getTag();
    int i;
    if (!locall.h.isChecked())
    {
      i = 1;
      if (locall.p.getVisibility() != 0) {
        break label71;
      }
    }
    label71:
    for (boolean bool = true;; bool = false)
    {
      if (locall.h.isEnabled())
      {
        if (i == 0) {
          break label76;
        }
        this.c.a.a(true, this.b, bool);
      }
      return;
      i = 0;
      break;
    }
    label76:
    this.c.a.a(false, this.b, bool);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ar
 * JD-Core Version:    0.7.0.1
 */