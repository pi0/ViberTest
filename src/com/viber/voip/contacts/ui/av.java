package com.viber.voip.contacts.ui;

import android.util.Pair;
import android.widget.ListView;
import com.viber.voip.contacts.a.m;
import com.viber.voip.contacts.b.e;
import com.viber.voip.ui.aa;
import com.viber.voip.util.gl;

class av
  implements Runnable
{
  av(au paramau, Pair paramPair) {}
  
  public void run()
  {
    int i = this.b.a.getListView().getFirstVisiblePosition();
    int j = ap.a(this.b.a, (e)this.a.second);
    if (j == -1) {
      return;
    }
    int k;
    if (ap.d(this.b.a).c(j))
    {
      k = 0;
      if ((Math.abs(i - j) <= 100) && (gl.b())) {
        break label121;
      }
      this.b.a.getListView().setSelectionFromTop(j, k);
    }
    for (;;)
    {
      this.b.a.c.g();
      return;
      k = ap.c(this.b.a);
      break;
      label121:
      this.b.a.getListView().smoothScrollToPositionFromTop(j, k);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.av
 * JD-Core Version:    0.7.0.1
 */