package com.viber.voip.messages.conversation.a.a.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.viber.voip.messages.conversation.a.a.b.a.b;
import com.viber.voip.messages.conversation.a.b.f;
import com.viber.voip.stickers.r;

class p
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, b>
  implements View.OnClickListener
{
  private LinearLayout a;
  private ImageView b;
  private ImageView c;
  private r d = r.a();
  private f e;
  private com.viber.voip.messages.conversation.a.a.a f;
  
  public p(View paramView, f paramf)
  {
    super(paramView);
    this.e = paramf;
    this.a = ((LinearLayout)paramView.findViewById(2131165972));
    this.b = ((ImageView)paramView.findViewById(2131165974));
    this.c = ((ImageView)paramView.findViewById(2131165975));
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
  }
  
  private boolean a(int paramInt, int... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramInt == paramVarArgs[j]) {
          bool = true;
        }
      }
      else {
        return bool;
      }
    }
  }
  
  private boolean a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    boolean bool1 = parama.t();
    boolean bool2 = false;
    if (bool1)
    {
      int i = (int)parama.P();
      com.viber.voip.stickers.c.a locala = this.d.l(i);
      bool2 = false;
      if (locala != null)
      {
        int j = locala.j;
        bool2 = false;
        if (j >= 3) {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, b paramb)
  {
    int i = 8;
    this.f = parama;
    int j;
    int k;
    label55:
    int m;
    label133:
    LinearLayout.LayoutParams localLayoutParams1;
    LinearLayout.LayoutParams localLayoutParams2;
    if (!"sound".equals(this.f.e()))
    {
      j = 1;
      ImageView localImageView1 = this.b;
      if ((j == 0) || (-1 != this.f.F())) {
        break label224;
      }
      k = 0;
      localImageView1.setVisibility(k);
      if ((j == 0) || (!this.f.s())) {
        break label230;
      }
      if ((!a(this.f.F(), new int[] { 0, 4, 3, 5, 6 })) || (parama.a() == 0L)) {
        break label230;
      }
      m = 1;
      ImageView localImageView2 = this.c;
      if (m != 0) {
        i = 0;
      }
      localImageView2.setVisibility(i);
      localLayoutParams1 = (LinearLayout.LayoutParams)this.b.getLayoutParams();
      localLayoutParams2 = (LinearLayout.LayoutParams)this.c.getLayoutParams();
      if (!a(parama)) {
        break label236;
      }
      this.a.setOrientation(1);
      localLayoutParams1.topMargin = paramb.j();
    }
    for (localLayoutParams2.topMargin = paramb.j();; localLayoutParams2.topMargin = 0)
    {
      this.a.requestLayout();
      return;
      j = 0;
      break;
      label224:
      k = i;
      break label55;
      label230:
      m = 0;
      break label133;
      label236:
      this.a.setOrientation(0);
      localLayoutParams1.topMargin = 0;
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131165974)
    {
      this.e.h(this.f);
      return;
    }
    this.e.i(this.f);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.p
 * JD-Core Version:    0.7.0.1
 */