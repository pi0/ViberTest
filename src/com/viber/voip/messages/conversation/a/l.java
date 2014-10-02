package com.viber.voip.messages.conversation.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.k;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.util.gv;

class l
  implements View.OnClickListener
{
  l(j paramj) {}
  
  public void onClick(View paramView)
  {
    bc.a().a(g.c(this.a.a).j());
    Intent localIntent = gv.c(g.d(this.a.a), j.a(this.a).e());
    if (!(g.d(this.a.a) instanceof Activity))
    {
      localIntent.addFlags(268435456);
      g.d(this.a.a).sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
    }
    g.d(this.a.a).startActivity(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.l
 * JD-Core Version:    0.7.0.1
 */