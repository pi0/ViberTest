package com.viber.voip.messages.conversation.a.a.a;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.messages.conversation.a.a.b.a.b;
import com.viber.voip.messages.conversation.a.b.c;
import com.viber.voip.messages.conversation.a.r;
import com.viber.voip.messages.extras.map.BalloonLayout;
import com.viber.voip.util.ak;
import com.viber.voip.util.gk;
import java.util.List;

public class f
  extends k
  implements View.OnClickListener
{
  private TextView a;
  private TextView b;
  private BalloonLayout c;
  private c d;
  private View e;
  private ImageView f;
  private TextView g;
  private View h;
  private r l;
  private com.viber.voip.messages.conversation.a.a.a m;
  
  public f(View paramView, Fragment paramFragment, r paramr, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    super(paramView);
    this.l = paramr;
    this.a = ((TextView)paramView.findViewById(2131165430));
    this.b = ((TextView)paramView.findViewById(2131165963));
    this.c = ((BalloonLayout)paramView.findViewById(2131165962));
    this.g = ((TextView)paramView.findViewById(2131165991));
    this.h = paramView.findViewById(2131165990);
    this.f = ((ImageView)paramView.findViewById(2131165964));
    this.e = paramView.findViewById(2131165961);
    this.c.setTag(this);
    this.c.setOnClickListener(this);
    paramFragment.registerForContextMenu(this.c);
    this.j.add(new g(paramView));
    this.j.add(new i(this.e, this, paramOnCheckedChangeListener));
    this.j.add(new m(paramView, null, true));
    this.j.add(new t(paramView));
    this.d = ((c)paramFragment);
  }
  
  private void a(b paramb)
  {
    this.c.setMaxWidth(paramb.l());
    int i;
    label125:
    int j;
    label177:
    BalloonLayout localBalloonLayout2;
    if (this.m.M() > 1)
    {
      this.b.setVisibility(0);
      TextView localTextView2 = this.b;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.m.M());
      localTextView2.setText(String.format("(%s)", arrayOfObject2));
      this.a.setText(gk.a(this.m.y(), this.m.M()));
      BalloonLayout localBalloonLayout1 = this.c;
      if (!this.m.N()) {
        break label279;
      }
      i = paramb.d();
      localBalloonLayout1.setBackgroundResource(i);
      if ((this.m.M() > 1) && (this.m.ai())) {
        break label288;
      }
      this.h.setVisibility(0);
      this.f.setVisibility(8);
      j = 0;
      localBalloonLayout2 = this.c;
      if (j == 0) {
        break label311;
      }
    }
    for (;;)
    {
      localBalloonLayout2.setOnClickListener(this);
      return;
      if ((this.m.q()) || (this.m.h() > 0L))
      {
        this.b.setVisibility(0);
        TextView localTextView1 = this.b;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = ak.a(this.m.h());
        localTextView1.setText(String.format("(%s)", arrayOfObject1));
        break;
      }
      this.b.setVisibility(8);
      break;
      label279:
      i = paramb.c();
      break label125;
      label288:
      this.h.setVisibility(8);
      this.f.setVisibility(0);
      j = 1;
      break label177;
      label311:
      this = null;
    }
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, b paramb)
  {
    super.a(parama, paramb);
    this.m = parama;
    a(paramb);
    a(parama, paramb, this.l, this.e);
  }
  
  protected void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a parama1, r paramr, View paramView)
  {
    this.e.setPadding(this.e.getPaddingLeft(), parama1.c(this.m), this.e.getPaddingRight(), parama1.d(this.m));
    super.a(parama, parama1, paramr, paramView);
  }
  
  public void onClick(View paramView)
  {
    if (this.d != null) {
      this.d.f((com.viber.voip.messages.conversation.a.a.a)c());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.f
 * JD-Core Version:    0.7.0.1
 */