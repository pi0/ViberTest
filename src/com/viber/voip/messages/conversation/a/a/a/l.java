package com.viber.voip.messages.conversation.a.a.a;

import android.support.v4.app.Fragment;
import android.view.View;
import com.viber.voip.messages.conversation.a.r;
import com.viber.voip.messages.conversation.a.s;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.ui.b.c;
import java.util.Iterator;
import java.util.List;

abstract class l
  extends k
  implements c
{
  private View a;
  private r b;
  
  public l(View paramView, Fragment paramFragment, boolean paramBoolean, bb parambb, r paramr, s params1, s params2)
  {
    super(paramView);
    this.b = paramr;
    this.a = paramView.findViewById(2131165961);
    this.j.add(new g(paramView));
    this.j.add(new a(paramView, (com.viber.voip.messages.conversation.a.b.a)paramFragment));
    this.j.add(new b(paramView, paramFragment, this, parambb, params1, params2));
    this.j.add(new t(paramView));
  }
  
  public void a()
  {
    Iterator localIterator = this.j.iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.ui.b.a locala = (com.viber.voip.ui.b.a)localIterator.next();
      if ((locala instanceof c)) {
        ((c)locala).a();
      }
    }
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    super.a(parama, paramb);
    this.a.setPadding(this.a.getPaddingLeft(), paramb.h(parama), this.a.getPaddingRight(), paramb.i(parama));
    a(parama, paramb, this.b, this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.l
 * JD-Core Version:    0.7.0.1
 */