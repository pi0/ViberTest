package com.viber.voip.messages.conversation.a.a.a;

import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.a.a.b.a.b;
import com.viber.voip.messages.conversation.a.b.e;
import com.viber.voip.messages.conversation.a.b.f;
import com.viber.voip.messages.conversation.a.r;
import com.viber.voip.messages.conversation.a.s;
import com.viber.voip.messages.ui.bb;
import java.util.List;

public class o
  extends l
{
  private final int a;
  
  public o(View paramView, Fragment paramFragment, boolean paramBoolean, bb parambb, r paramr, s params1, s params2, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    super(paramView, paramFragment, paramBoolean, parambb, paramr, params1, params2);
    if (paramBoolean) {}
    for (int i = 4;; i = 2)
    {
      this.a = i;
      this.j.add(new p(paramView.findViewById(2131165972), (f)paramFragment));
      this.j.add(new i(paramView, this, paramOnCheckedChangeListener));
      this.j.add(new m(paramView, (e)paramFragment, false));
      return;
    }
  }
  
  public void a(a parama, b paramb)
  {
    super.a(parama, paramb);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.o
 * JD-Core Version:    0.7.0.1
 */