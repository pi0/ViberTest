package com.viber.voip.messages.conversation.a.a.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.messages.conversation.a.a.b.a.b;
import com.viber.voip.messages.conversation.a.b.e;

class m
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, b>
  implements View.OnClickListener
{
  private ImageView a;
  private TextView b;
  private View c;
  private e d;
  private com.viber.voip.messages.conversation.a.a.a e;
  
  protected m(View paramView, e parame, boolean paramBoolean)
  {
    super(paramView);
    this.d = parame;
    this.b = ((TextView)paramView.findViewById(2131165949));
  }
  
  private void a(b paramb)
  {
    int i = 8;
    if (this.b == null) {
      return;
    }
    if ((!this.e.S()) || (this.e.k()))
    {
      this.b.setVisibility(i);
      return;
    }
    TextView localTextView = this.b;
    if (this.e.p()) {
      i = 0;
    }
    localTextView.setVisibility(i);
    this.b.setText(this.e.W());
  }
  
  private void b(b paramb)
  {
    int i = 1;
    int j;
    int k;
    label112:
    int i1;
    label148:
    label185:
    label192:
    View localView1;
    if (((this.e.f() != 0) && (this.e.g() != 0) && ((this.e.e() == null) || (!this.e.e().equals("location")))) || (this.e.R() == 0))
    {
      j = i;
      this.a = ((ImageView)this.k.findViewById(2131165992));
      if ((!this.e.r()) && (!this.e.w())) {
        break label239;
      }
      k = i;
      if ((!this.e.s()) || (this.e.w()) || (this.e.x())) {
        break label245;
      }
      if (i == 0) {
        break label257;
      }
      this.c = this.k.findViewById(2131166001);
      if (this.c != null)
      {
        View localView2 = this.c;
        if (j == 0) {
          break label250;
        }
        i1 = 0;
        localView2.setVisibility(i1);
      }
      if ((this.c != null) && (this.d != null))
      {
        localView1 = this.c;
        if (j == 0) {
          break label273;
        }
      }
    }
    label257:
    label273:
    for (m localm = this;; localm = null)
    {
      localView1.setOnClickListener(localm);
      if (this.a != null) {
        break label279;
      }
      return;
      j = 0;
      break;
      label239:
      k = 0;
      break label112;
      label245:
      i = 0;
      break label148;
      label250:
      i1 = 8;
      break label185;
      this.c = this.k.findViewById(2131165990);
      break label192;
    }
    label279:
    ImageView localImageView = this.a;
    int m = 0;
    if (j != 0)
    {
      localImageView.setVisibility(m);
      if (k == 0) {
        break label325;
      }
    }
    label325:
    for (int n = 2130838259;; n = 2130838260)
    {
      this.a.setImageResource(n);
      return;
      m = 8;
      break;
    }
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, b paramb)
  {
    this.e = parama;
    a(paramb);
    b(paramb);
    this.k.requestLayout();
  }
  
  public void onClick(View paramView)
  {
    this.d.g(this.e);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.m
 * JD-Core Version:    0.7.0.1
 */