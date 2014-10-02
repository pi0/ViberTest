package com.viber.voip.messages.ui.popup.a;

import android.view.View;
import android.widget.ImageView;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;

class c
{
  public final ImageView a;
  public final ImageView b;
  protected an c;
  private int e;
  
  private c(a parama, View paramView, int paramInt, an paraman)
  {
    this.a = ((ImageView)paramView.findViewById(2131165872));
    this.b = ((ImageView)paramView.findViewById(2131165873));
    this.a.setOnClickListener(a.a(parama));
    this.b.setOnClickListener(a.a(parama));
    this.e = paramInt;
    this.c = paraman;
    ImageView localImageView1 = this.b;
    int j;
    ImageView localImageView2;
    if (-1 + parama.f().getCount() == paramInt)
    {
      j = i;
      localImageView1.setVisibility(j);
      localImageView2 = this.a;
      if (paramInt != 0) {
        break label126;
      }
    }
    for (;;)
    {
      localImageView2.setVisibility(i);
      return;
      j = 0;
      break;
      label126:
      i = 0;
    }
  }
  
  public an a()
  {
    return this.c;
  }
  
  public int b()
  {
    return this.e;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.c
 * JD-Core Version:    0.7.0.1
 */