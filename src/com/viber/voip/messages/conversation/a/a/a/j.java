package com.viber.voip.messages.conversation.a.a.a;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.conversation.a.b.e;
import com.viber.voip.messages.conversation.a.s;
import com.viber.voip.stickers.b.h;
import com.viber.voip.stickers.c.c;
import java.util.List;

public class j
  extends r
  implements View.OnClickListener, View.OnTouchListener
{
  private final View l;
  private final Fragment m;
  
  public j(View paramView, Fragment paramFragment, com.viber.voip.messages.conversation.a.r paramr, s params1, s params2, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener, com.viber.voip.stickers.b paramb)
  {
    super(paramView, paramFragment, paramr, params1, params2, paramb);
    this.l = paramView.findViewById(2131165987);
    this.l.setOnClickListener(this);
    this.j.add(new i(paramView, this, paramOnCheckedChangeListener));
    this.j.add(new m(paramView, (e)paramFragment, true));
    this.m = paramFragment;
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    super.a(parama, paramb);
    com.viber.voip.stickers.c.a locala = a();
    View localView;
    if (locala != null)
    {
      a(locala, paramb.n());
      localView = this.l;
      if ((locala.c != c.c) || (locala.e()) || (!parama.m())) {
        break label67;
      }
    }
    label67:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.l)
    {
      if ((this.m != null) && ((this.m instanceof com.viber.voip.messages.ui.chathead.a.b)))
      {
        ((com.viber.voip.messages.ui.chathead.a.b)this.m).f_(h.d(a().b));
        return;
      }
      MarketActivity.e(h.d(a().b));
      return;
    }
    super.onClick(paramView);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.j
 * JD-Core Version:    0.7.0.1
 */