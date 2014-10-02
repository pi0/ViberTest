package com.viber.voip.messages.conversation.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.messages.conversation.a.a.b.a.b;
import com.viber.voip.messages.conversation.a.b.e;

public class t
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, b>
  implements View.OnClickListener
{
  private TextView a;
  private com.viber.voip.messages.conversation.a.a.a b;
  private ImageView c;
  private View d;
  private e e;
  
  public t(View paramView)
  {
    this(paramView, null);
  }
  
  public t(View paramView, e parame)
  {
    super(paramView);
    this.e = parame;
  }
  
  private void a()
  {
    if (this.a == null) {
      this.a = ((TextView)this.k.findViewById(2131165991));
    }
    if (this.a == null) {
      return;
    }
    String str = this.b.Q();
    this.a.setText(str);
    int i = this.k.getContext().getResources().getColor(2131296430);
    if ((this.b.r()) || (this.b.w()))
    {
      this.a.setTextColor(i);
      this.a.setShadowLayer(0.0F, 0.0F, 0.0F, i);
      return;
    }
    if (this.b.v())
    {
      this.a.setTextColor(this.a.getContext().getResources().getColor(2131296453));
      this.a.setShadowLayer(0.0F, 0.0F, 0.0F, i);
      return;
    }
    this.a.setTextColor(this.k.getContext().getResources().getColor(2131296418));
    this.a.setShadowLayer(1.0F, 0.0F, 1.0F, i);
  }
  
  private void a(b paramb)
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
    if (((this.b.f() != 0) && (this.b.g() != 0) && ((this.b.e() == null) || (!this.b.e().equals("location")))) || (this.b.R() == 0))
    {
      j = i;
      this.c = ((ImageView)this.k.findViewById(2131165992));
      if ((!this.b.r()) && (!this.b.w())) {
        break label239;
      }
      k = i;
      if ((!this.b.s()) || (this.b.w()) || (this.b.x())) {
        break label245;
      }
      if (i == 0) {
        break label257;
      }
      this.d = this.k.findViewById(2131166001);
      if (this.d != null)
      {
        View localView2 = this.d;
        if (j == 0) {
          break label250;
        }
        i1 = 0;
        localView2.setVisibility(i1);
      }
      if ((this.d != null) && (this.e != null))
      {
        localView1 = this.d;
        if (j == 0) {
          break label273;
        }
      }
    }
    label257:
    label273:
    for (t localt = this;; localt = null)
    {
      localView1.setOnClickListener(localt);
      if (this.c != null) {
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
      this.d = this.k.findViewById(2131165990);
      break label192;
    }
    label279:
    ImageView localImageView = this.c;
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
      this.c.setImageResource(n);
      return;
      m = 8;
      break;
    }
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, b paramb)
  {
    this.b = parama;
    a();
    a(paramb);
  }
  
  public void onClick(View paramView)
  {
    this.e.g(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.t
 * JD-Core Version:    0.7.0.1
 */