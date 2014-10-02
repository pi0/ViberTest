package com.viber.voip.messages.conversation.a.a.a;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Pair;
import android.view.View;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.messages.conversation.a.r;
import com.viber.voip.messages.extras.map.BalloonLayout;
import com.viber.voip.messages.h;
import com.viber.voip.util.b.aa;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import java.util.List;

public class n
  extends k
{
  com.viber.voip.messages.conversation.a.a.a a;
  private final View b;
  private final BalloonLayout c;
  private final TextView d;
  private final ImageView e;
  private final h f;
  private final CompoundButton.OnCheckedChangeListener g;
  private final r h;
  private final w l;
  private final x m;
  
  public n(View paramView, h paramh, r paramr, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    super(paramView);
    this.h = paramr;
    this.g = paramOnCheckedChangeListener;
    this.f = paramh;
    this.b = paramView.findViewById(2131165961);
    this.c = ((BalloonLayout)paramView.findViewById(2131165979));
    this.d = ((TextView)paramView.findViewById(2131165981));
    this.e = ((ImageView)paramView.findViewById(2131165980));
    this.l = w.a(paramView.getContext());
    Context localContext = paramView.getContext();
    this.m = new z().a(aa.a).a(2130838219, localContext).b(2130838219, localContext).b();
    this.j.add(new g(paramView));
    this.j.add(new i(this.b, this, this.g));
  }
  
  private void a(com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    Pair localPair = this.f.a(this.a.y(), this.a.z(), this.a.A(), this.a.U());
    this.d.setText((CharSequence)localPair.first);
    this.d.setTextColor(paramb.e());
    long l1 = this.a.aa();
    long l2 = this.a.ad();
    boolean bool1 = this.a.S();
    if (((Boolean)localPair.second).booleanValue())
    {
      w localw = this.l;
      com.viber.voip.messages.a.a locala = com.viber.voip.messages.a.b.d();
      if ((bool1) || (l2 > 0L)) {}
      for (boolean bool2 = true;; bool2 = false)
      {
        localw.a(locala.a(l1, bool2), this.e, this.m);
        return;
      }
    }
    this.e.setImageBitmap(BitmapFactory.decodeResource(this.k.getContext().getResources(), 2130838219));
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    super.a(parama, paramb);
    this.a = parama;
    a(paramb);
    a(parama, paramb, this.h, this.b);
  }
  
  protected void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a parama1, r paramr, View paramView)
  {
    this.b.setPadding(this.b.getPaddingLeft(), parama1.e(this.a), this.b.getPaddingRight(), parama1.f(this.a));
    super.a(parama, parama1, paramr, paramView);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.n
 * JD-Core Version:    0.7.0.1
 */