package com.viber.voip.messages.conversation.a.a.a;

import android.view.View;
import com.viber.voip.messages.conversation.a.r;

public abstract class k
  extends com.viber.voip.ui.b.b<com.viber.voip.messages.conversation.a.a.a, com.viber.voip.messages.conversation.a.a.b.a.b>
{
  protected k(View paramView)
  {
    super(paramView);
  }
  
  protected void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a parama1, r paramr, View paramView)
  {
    if (parama.m()) {
      paramView.setPadding(paramView.getPaddingLeft(), paramView.getPaddingTop(), paramView.getPaddingRight(), parama1.g(parama));
    }
    if ((paramr != null) && (parama.m())) {
      paramr.a_(parama);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.k
 * JD-Core Version:    0.7.0.1
 */