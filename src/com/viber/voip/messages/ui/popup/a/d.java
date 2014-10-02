package com.viber.voip.messages.ui.popup.a;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.viber.voip.messages.adapters.MediaLayout;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.widget.PttLayout;

class d
  extends c
{
  public final LinearLayout e;
  public final MediaLayout f;
  public final PttLayout g;
  public final TextView h;
  
  private d(a parama, View paramView, int paramInt, an paraman)
  {
    super(parama, paramView, paramInt, paraman, null);
    this.e = ((LinearLayout)paramView.findViewById(2131165874));
    this.f = ((MediaLayout)paramView.findViewById(2131165875));
    this.g = ((PttLayout)paramView.findViewById(2131165876));
    this.h = ((TextView)paramView.findViewById(2131165877));
    this.e.setOnClickListener(a.a(parama));
    this.f.setOnClickListener(new e(this, parama));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.d
 * JD-Core Version:    0.7.0.1
 */