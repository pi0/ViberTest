package com.viber.voip.messages.ui.popup.a;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.messages.conversation.an;

class f
  extends c
{
  public final TextView e;
  public final RelativeLayout f;
  
  private f(a parama, View paramView, int paramInt, an paraman)
  {
    super(parama, paramView, paramInt, paraman, null);
    this.e = ((TextView)paramView.findViewById(2131165879));
    this.f = ((RelativeLayout)paramView.findViewById(2131165869));
    this.e.setOnClickListener(a.a(parama));
    this.f.setOnClickListener(a.a(parama));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.f
 * JD-Core Version:    0.7.0.1
 */