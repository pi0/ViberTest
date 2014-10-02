package com.viber.voip.messages.conversation.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.stickers.b.h;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.c.c;
import com.viber.voip.util.gl;
import java.util.List;

public abstract class r
  extends k
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int l = Color.argb(76, 255, 0, 0);
  protected final com.viber.voip.stickers.r a = com.viber.voip.stickers.r.a();
  protected final com.viber.voip.stickers.b b;
  protected final ImageView c;
  protected final TextView d;
  protected final View e;
  protected final ImageView f;
  protected final ImageView g;
  protected final ProgressBar h;
  private final com.viber.voip.stickers.ui.b m;
  private final com.viber.voip.messages.conversation.a.r n;
  private final com.viber.voip.messages.conversation.a.s o;
  private final com.viber.voip.messages.conversation.a.s p;
  private com.viber.voip.messages.conversation.a.a.a q;
  private View r;
  
  public r(View paramView, Fragment paramFragment, com.viber.voip.messages.conversation.a.r paramr, com.viber.voip.messages.conversation.a.s params1, com.viber.voip.messages.conversation.a.s params2, com.viber.voip.stickers.b paramb)
  {
    super(paramView);
    this.b = paramb;
    this.n = paramr;
    this.o = params1;
    this.p = params2;
    this.r = paramView.findViewById(2131165961);
    this.e = paramView.findViewById(2131166140);
    this.f = ((ImageView)paramView.findViewById(2131166141));
    this.g = ((ImageView)paramView.findViewById(2131166142));
    this.h = ((ProgressBar)paramView.findViewById(2131166143));
    this.c = ((ImageView)paramView.findViewById(2131165992));
    this.d = ((TextView)paramView.findViewById(2131165991));
    this.m = new com.viber.voip.stickers.ui.b(this.b, this.f, this.g);
    this.e.setTag(this);
    this.e.setOnTouchListener(this);
    this.e.setOnClickListener(this);
    paramFragment.registerForContextMenu(this.e);
    this.j.add(new g(paramView));
    this.j.add(new a(paramView, (com.viber.voip.messages.conversation.a.b.a)paramFragment));
    this.j.add(new t(paramView));
  }
  
  private void d()
  {
    int i = this.q.F();
    if ((i == 1) || (i == 2))
    {
      ViewHelper.setAlpha(this.r, 1.0F);
      this.f.clearColorFilter();
      return;
    }
    if (i == -1)
    {
      this.f.setColorFilter(l);
      ViewHelper.setAlpha(this.r, 1.0F);
      return;
    }
    ViewHelper.setAlpha(this.r, 0.4F);
    this.f.clearColorFilter();
  }
  
  protected com.viber.voip.stickers.c.a a()
  {
    int i = (int)((com.viber.voip.messages.conversation.a.a.a)c()).P();
    return this.a.l(i);
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    super.a(parama, paramb);
    this.q = parama;
    d();
    a(parama, paramb, this.n, this.r);
  }
  
  protected void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a parama1, com.viber.voip.messages.conversation.a.r paramr, View paramView)
  {
    this.r.setPadding(this.r.getPaddingLeft(), parama1.a(this.q), this.r.getPaddingRight(), parama1.b(this.q));
    super.a(parama, parama1, paramr, paramView);
  }
  
  protected void a(com.viber.voip.stickers.c.a parama, boolean paramBoolean)
  {
    Boolean localBoolean1 = (Boolean)this.f.getTag(2131165267);
    Integer localInteger = (Integer)this.f.getTag(2131165268);
    Boolean localBoolean2 = (Boolean)this.f.getTag(2131165269);
    Boolean localBoolean3 = (Boolean)this.f.getTag(2131165270);
    Boolean localBoolean4 = (Boolean)this.f.getTag(2131165271);
    com.viber.voip.stickers.ui.b localb2;
    if ((localInteger == null) || (localInteger.intValue() != parama.b) || (localBoolean2.booleanValue() != parama.g()) || (localBoolean3.booleanValue() != parama.j()) || (localBoolean4.booleanValue() != parama.e()) || ((localBoolean1 != null) && (!localBoolean1.booleanValue()) && (paramBoolean == true)))
    {
      this.m.a();
      this.m.a(parama);
      ViewGroup.LayoutParams localLayoutParams1 = this.f.getLayoutParams();
      localLayoutParams1.width = parama.p;
      localLayoutParams1.height = parama.q;
      ViewGroup.LayoutParams localLayoutParams2 = this.g.getLayoutParams();
      localLayoutParams2.width = parama.p;
      localLayoutParams2.height = parama.q;
      if (!parama.g()) {
        break label363;
      }
      localb2 = this.m;
      if (paramBoolean) {
        break label357;
      }
    }
    label357:
    for (boolean bool2 = true;; bool2 = false)
    {
      localb2.a(false, false, bool2, b(), ba.b, null);
      this.f.setVisibility(0);
      this.m.a(true);
      this.g.setVisibility(8);
      this.h.setVisibility(8);
      this.f.setTag(2131165267, Boolean.valueOf(paramBoolean));
      this.f.setTag(2131165268, Integer.valueOf(parama.b));
      this.f.setTag(2131165269, Boolean.valueOf(parama.g()));
      this.f.setTag(2131165270, Boolean.valueOf(parama.j()));
      this.f.setTag(2131165271, Boolean.valueOf(parama.e()));
      return;
    }
    label363:
    this.m.a(false);
    this.f.setVisibility(8);
    com.viber.voip.stickers.ui.b localb1 = this.m;
    if (!paramBoolean) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      localb1.a(false, true, bool1, b(), ba.b, null);
      this.g.setVisibility(0);
      this.h.setVisibility(0);
      break;
    }
  }
  
  protected boolean b()
  {
    DisplayMetrics localDisplayMetrics = this.k.getContext().getResources().getDisplayMetrics();
    return localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels;
  }
  
  public void onClick(View paramView)
  {
    com.viber.voip.stickers.c.a locala = a();
    if ((!locala.e()) && (locala.c == c.c)) {
      MarketActivity.d(h.d(locala.b));
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.o != null) {
      this.o.a(paramMotionEvent);
    }
    this.p.a(paramMotionEvent);
    com.viber.voip.stickers.c.a locala = a();
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      return false;
    case 0: 
      if (locala.e())
      {
        this.g.setVisibility(0);
        this.m.a(true, b(), ba.b, new s(this));
        return false;
      }
      gl.a(this.f, 178);
      gl.a(this.g, 178);
      return false;
    }
    if (locala.e())
    {
      this.g.setVisibility(8);
      this.m.a(true);
      return false;
    }
    gl.a(this.f, 255);
    gl.a(this.g, 255);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.r
 * JD-Core Version:    0.7.0.1
 */