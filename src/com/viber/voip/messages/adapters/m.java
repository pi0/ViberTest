package com.viber.voip.messages.adapters;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.c;
import com.viber.voip.messages.conversation.ar;
import com.viber.voip.util.gn;

class m
  implements View.OnClickListener
{
  m(l paraml, ar paramar) {}
  
  public void onClick(View paramView)
  {
    Context localContext1 = l.a(this.b);
    int i = this.a.i();
    int j = this.a.j();
    long l = this.a.k();
    com.viber.voip.util.l locall = ViberApplication.getInstance().getBiDiAwareFormatter();
    Context localContext2 = l.a(this.b);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a.n();
    String str1 = locall.a(localContext2.getString(2131494176, arrayOfObject));
    if (l.b(this.b) != null) {}
    for (String str2 = l.b(this.b).a();; str2 = "")
    {
      gn.a(localContext1, 0L, i, j, l, str1, "", str2, true);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.m
 * JD-Core Version:    0.7.0.1
 */