package com.viber.voip.messages.conversation.a.a.a;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.viber.voip.messages.conversation.a.b.e;
import com.viber.voip.messages.conversation.a.b.f;
import com.viber.voip.messages.conversation.a.s;
import java.util.List;

public class q
  extends r
  implements View.OnClickListener, View.OnTouchListener
{
  public q(View paramView, Fragment paramFragment, com.viber.voip.messages.conversation.a.r paramr, s params1, s params2, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener, com.viber.voip.stickers.b paramb)
  {
    super(paramView, paramFragment, paramr, params1, params2, paramb);
    this.e.setMinimumWidth(0);
    this.j.add(new i(paramView, this, paramOnCheckedChangeListener));
    this.j.add(new p(paramView, (f)paramFragment));
    this.j.add(new m(paramView, (e)paramFragment, false));
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    super.a(parama, paramb);
    com.viber.voip.stickers.c.a locala = a();
    if (locala != null) {
      a(locala, paramb.n());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.q
 * JD-Core Version:    0.7.0.1
 */