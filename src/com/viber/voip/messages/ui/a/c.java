package com.viber.voip.messages.ui.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.viber.voip.messages.adapters.q;
import com.viber.voip.messages.ui.DottedScrollbar;
import com.viber.voip.messages.ui.bp;

public class c
  implements a
{
  private static final String a = c.class.getSimpleName();
  private final View b;
  private final ListView c;
  private final q d;
  private final DottedScrollbar e;
  private final h f;
  private b g;
  private Animation h;
  private bp i;
  private int j;
  private int k = -2147483648;
  private int l = -2147483648;
  private View m;
  private View n;
  private int o;
  
  public c(Context paramContext, h paramh, int paramInt, q paramq)
  {
    this.f = paramh;
    this.o = ((int)paramContext.getResources().getDimension(2131362184));
    this.h = AnimationUtils.loadAnimation(paramContext, 2130968578);
    this.h.setDuration(150L);
    this.h.setAnimationListener(new d(this));
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    this.d = paramq;
    this.b = localLayoutInflater.inflate(2130903249, null);
    this.c = ((ListView)this.b.findViewById(2131165910));
    this.e = ((DottedScrollbar)this.b.findViewById(2131165909));
    this.m = new View(paramContext);
    this.m.setLayoutParams(new AbsListView.LayoutParams(-1, this.o));
    this.n = new View(paramContext);
    this.c.addHeaderView(this.n);
    this.c.addFooterView(this.m);
    this.c.setAdapter(this.d);
    this.i = new e(this, paramh);
    this.c.setVerticalScrollBarEnabled(false);
    this.c.setOnTouchListener(new f(this));
    this.c.setOnScrollListener(this.i);
    if (h.b.equals(paramh))
    {
      TypedValue localTypedValue = new TypedValue();
      paramContext.getResources().getValue(2131362142, localTypedValue, true);
      int i1 = (int)(localTypedValue.getFloat() * paramInt);
      this.c.setLayoutParams(new LinearLayout.LayoutParams(paramInt - i1, -1));
      this.e.setVisibility(0);
      this.e.setLayoutParams(new LinearLayout.LayoutParams(i1, -1));
      a(this.c.getFirstVisiblePosition());
      return;
    }
    this.e.setVisibility(8);
  }
  
  public c(Context paramContext, h paramh, com.viber.voip.stickers.b paramb, com.viber.voip.messages.ui.u paramu, int paramInt1, int paramInt2)
  {
    this(paramContext, paramh, paramInt1, new q(paramContext, paramInt2, paramb, paramu));
    this.j = paramInt2;
  }
  
  private void a(int paramInt)
  {
    View localView = this.c.getChildAt(0);
    if (localView != null)
    {
      int i1 = (int)(4.0F * ((localView.getHeight() - localView.getBottom() + this.d.a(0, paramInt)) / (this.d.a(0, this.d.getCount()) - this.c.getHeight())));
      if ((i1 < 0) || (i1 >= 4)) {
        i1 = 3;
      }
      this.e.setCurrentPosition(i1);
    }
  }
  
  public View a()
  {
    return this.b;
  }
  
  public void a(int paramInt, com.viber.voip.messages.adapters.u paramu)
  {
    this.d.a(paramInt, this.c.getFirstVisiblePosition(), true, new g(this, paramInt, paramu));
  }
  
  public void a(b paramb)
  {
    this.g = paramb;
  }
  
  public void a(com.viber.voip.stickers.c.a parama)
  {
    this.d.a(parama);
  }
  
  public void a(com.viber.voip.stickers.c.d paramd)
  {
    if (paramd.e() == this.j) {
      this.d.a(this.j, this.c.getFirstVisiblePosition(), false, null);
    }
  }
  
  public void b()
  {
    if (this.d.b()) {
      this.d.notifyDataSetChanged();
    }
  }
  
  public void c()
  {
    if ((this.d.c()) && (this.d.e())) {
      this.d.notifyDataSetChanged();
    }
  }
  
  public void d()
  {
    this.d.d();
  }
  
  public void e()
  {
    this.c.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, 0.0F, 0.0F, 0));
    this.c.setSelectionFromTop(0, 0);
    if (h.b.equals(this.f)) {
      a(0);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.a.c
 * JD-Core Version:    0.7.0.1
 */