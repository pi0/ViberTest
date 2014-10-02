package com.viber.voip.messages.conversation.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.k;
import com.viber.voip.messages.conversation.ui.ConversationFragment;

public class g
  extends BaseAdapter
{
  private int a = 0;
  private final int b;
  private final int c;
  private final int d = -1;
  private final int e;
  private final int f;
  private Context g;
  private ConversationFragment h;
  private o i;
  private i j;
  private LayoutInflater k;
  private FrameLayout l;
  private TextView m;
  private RelativeLayout n;
  private View o;
  private View p;
  private j q;
  private n r;
  private k s = new k();
  private boolean t = false;
  private boolean u;
  
  public g(Context paramContext, ConversationFragment paramConversationFragment, o paramo)
  {
    this.g = paramContext;
    this.h = paramConversationFragment;
    this.j = new i(this, null);
    paramo.registerDataSetObserver(this.j);
    this.i = paramo;
    this.k = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.e = paramo.getViewTypeCount();
    this.f = (1 + this.e);
    this.r = new n(this);
    this.q = new j(this, null);
    this.b = ((int)paramContext.getResources().getDimension(2131362325));
    this.c = ((int)paramContext.getResources().getDimension(2131362326));
  }
  
  private int b(int paramInt)
  {
    if (p() == 1)
    {
      if (paramInt == 0) {
        return this.e;
      }
      if (paramInt == this.i.getCount()) {
        return this.f;
      }
    }
    else if (p() == 2)
    {
      if (paramInt == 0) {
        return this.e;
      }
      if (paramInt == 1 + this.i.getCount()) {
        return this.f;
      }
    }
    return -1;
  }
  
  private void m()
  {
    this.n = ((RelativeLayout)this.k.inflate(2130903314, null));
    this.o = this.n.findViewById(2131165920);
    this.p = this.n.findViewById(2131166098);
    this.q.a();
    a(this.a);
  }
  
  private void n()
  {
    this.l = ((FrameLayout)this.k.inflate(2130903270, null));
    this.m = ((TextView)this.l.findViewById(2131165982));
  }
  
  private void o()
  {
    FrameLayout localFrameLayout = this.l;
    int i1 = this.l.getPaddingLeft();
    int i2 = this.l.getPaddingTop();
    if (this.r.c) {}
    for (int i3 = this.c;; i3 = this.b)
    {
      localFrameLayout.setPadding(i1, i2, i3, this.l.getPaddingBottom());
      return;
    }
  }
  
  private int p()
  {
    return 2;
  }
  
  public o a()
  {
    return this.i;
  }
  
  public void a(int paramInt)
  {
    f();
    if (this.i == null) {}
    do
    {
      return;
      if (((paramInt == 0) || (paramInt == 1)) && (!this.i.e())) {
        this.q.b();
      }
    } while (paramInt == 0);
    if ((paramInt == 1) && (this.a == 3) && (this.o != null))
    {
      this.o.setVisibility(0);
      this.t = true;
    }
    if ((paramInt == 3) && (this.p != null)) {
      this.p.setVisibility(0);
    }
    this.a = paramInt;
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh)
  {
    this.q.a(paramh);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.r.a = paramBoolean1;
    this.r.b = paramBoolean2;
    this.r.c = paramBoolean3;
    h();
  }
  
  public void b()
  {
    if (this.i != null)
    {
      this.i.unregisterDataSetObserver(this.j);
      this.i = null;
    }
  }
  
  public void c()
  {
    this.u = true;
  }
  
  public void d()
  {
    if ((this.m != null) && (this.m.getVisibility() == 4)) {
      this.m.setVisibility(0);
    }
  }
  
  public void e()
  {
    if (this.n != null) {
      for (int i1 = 0; i1 < this.n.getChildCount(); i1++) {
        this.n.getChildAt(i1).setVisibility(8);
      }
    }
  }
  
  public void f()
  {
    if (this.n != null) {
      for (int i1 = 0; i1 < this.n.getChildCount(); i1++) {
        this.n.getChildAt(i1).setVisibility(8);
      }
    }
  }
  
  public void g()
  {
    if ((this.m != null) && (this.m.getVisibility() == 0)) {
      this.m.setVisibility(4);
    }
  }
  
  public int getCount()
  {
    if (this.i != null) {
      return this.i.getCount() + p();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if ((b(paramInt) == this.e) || (b(paramInt) == this.f)) {
      return null;
    }
    return this.i.a(paramInt - 1);
  }
  
  public long getItemId(int paramInt)
  {
    if ((b(paramInt) == this.e) || (b(paramInt) == this.f)) {
      return 0L;
    }
    return this.i.getItemId(paramInt - 1);
  }
  
  public int getItemViewType(int paramInt)
  {
    if (b(paramInt) == this.e) {
      return this.e;
    }
    if (b(paramInt) == this.f) {
      return this.f;
    }
    return this.i.getItemViewType(paramInt - 1);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (b(paramInt) == -1) {
      paramView = this.i.getView(paramInt - 1, paramView, paramViewGroup);
    }
    for (;;)
    {
      if ((b(paramInt) == this.f) && (this.u)) {
        h();
      }
      return paramView;
      if (b(paramInt) == this.e)
      {
        if (this.n == null) {
          m();
        }
        if (this.t)
        {
          j();
          this.t = false;
        }
        paramView = this.n;
      }
      else if ((b(paramInt) == this.f) && (paramView == null))
      {
        if (this.l == null) {
          n();
        }
        paramView = this.l;
        this.u = true;
      }
    }
  }
  
  public int getViewTypeCount()
  {
    return 2 + this.i.getViewTypeCount();
  }
  
  public void h()
  {
    if (this.l == null) {
      return;
    }
    if (this.r.a)
    {
      if (this.m != null)
      {
        this.m.setText(2131494356);
        o();
      }
      d();
    }
    for (;;)
    {
      if (this.l.getTop() != (int)ViewHelper.getY(this.l)) {
        ViewHelper.setY(this.l, this.l.getTop());
      }
      this.u = false;
      return;
      if (this.r.b)
      {
        if (this.m != null)
        {
          this.m.setText(2131493822);
          o();
        }
        d();
      }
      else
      {
        g();
      }
    }
  }
  
  public FrameLayout i()
  {
    return this.l;
  }
  
  public void j()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(ViberApplication.getInstance(), 2130968581);
    localAnimation.setStartOffset(1500L);
    localAnimation.setAnimationListener(new h(this));
    this.n.startAnimation(localAnimation);
  }
  
  public void k()
  {
    this.q.b();
  }
  
  public void l()
  {
    a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.g
 * JD-Core Version:    0.7.0.1
 */