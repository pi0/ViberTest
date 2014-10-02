package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ListView;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.ui.a.a;
import com.viber.voip.messages.ui.a.c;
import com.viber.voip.settings.f;
import com.viber.voip.stickers.b;
import com.viber.voip.stickers.r;
import com.viber.voip.util.gl;

public abstract class k
{
  public static final String a = k.class.getSimpleName();
  protected View b;
  protected ViewGroup c;
  protected a d;
  protected View e;
  protected int f;
  protected Handler g;
  protected boolean h;
  private Context i;
  private ListView j;
  private q k;
  private ImageButton l;
  private p m;
  private u n;
  private v o;
  private int p;
  private Runnable q;
  private EditText r;
  
  public k(Context paramContext, View paramView, u paramu, p paramp, int paramInt)
  {
    long l1 = System.currentTimeMillis();
    this.i = paramContext;
    this.b = paramView;
    this.g = dc.a(dk.a);
    this.m = paramp;
    this.n = paramu;
    this.f = paramInt;
    this.c = ((ViewGroup)paramView.findViewById(2131165699));
    (System.currentTimeMillis() - l1);
  }
  
  private a a(Context paramContext, f paramf, b paramb, u paramu)
  {
    int i1 = g();
    switch (o.a[paramf.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("unknown stickers display mode");
    case 1: 
      return new c(paramContext, com.viber.voip.messages.ui.a.h.a, paramb, paramu, i1, this.f);
    }
    return new c(paramContext, com.viber.voip.messages.ui.a.h.b, paramb, paramu, i1, this.f);
  }
  
  private void b(EditText paramEditText)
  {
    paramEditText.dispatchKeyEvent(new KeyEvent(0L, 0L, 0, 67, 0));
    paramEditText.dispatchKeyEvent(new KeyEvent(0L, 0L, 1, 67, 0));
  }
  
  private int g()
  {
    boolean bool1 = ViberApplication.isTablet();
    boolean bool2 = gl.e(this.i);
    int[] arrayOfInt = com.viber.voip.messages.extras.image.h.a(this.i);
    if (bool2) {}
    for (int i1 = arrayOfInt[1];; i1 = arrayOfInt[0])
    {
      if ((bool1) && (bool2)) {
        i1 = (int)(i1 * gl.g(this.i));
      }
      return i1;
    }
  }
  
  public void a(EditText paramEditText)
  {
    this.r = paramEditText;
    if (this.l == null) {
      return;
    }
    this.q = new m(this, paramEditText);
    this.l.setOnTouchListener(new n(this, paramEditText));
  }
  
  protected boolean a()
  {
    if (this.h) {
      return false;
    }
    this.p = 0;
    this.h = true;
    b localb = r.a().d();
    this.d = a(this.i, f.a, localb, this.n);
    this.e = ((FrameLayout)LayoutInflater.from(this.i).inflate(2130903246, null));
    this.e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.j = ((ListView)this.e.findViewById(2131165898));
    View localView1 = new View(this.i);
    localView1.setLayoutParams(new AbsListView.LayoutParams(-1, com.viber.voip.messages.extras.image.h.a(7.0F)));
    this.j.addHeaderView(localView1);
    b();
    this.l = ((ImageButton)this.e.findViewById(2131165899));
    if (this.r != null) {
      a(this.r);
    }
    View localView2 = this.d.a();
    localView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.o = new v(this, localView2, LayoutInflater.from(this.i).inflate(2130903340, null));
    this.e.setVisibility(8);
    this.d.a().setVisibility(8);
    this.c.removeAllViews();
    this.c.addView(this.d.a());
    this.c.addView(this.e);
    return false;
  }
  
  protected void b()
  {
    if ((!this.h) || (this.p == this.b.getMeasuredWidth())) {
      return;
    }
    this.p = this.b.getMeasuredWidth();
    int i1 = 5;
    int i2 = (int)(this.p / (this.i.getResources().getDisplayMetrics().densityDpi / 160.0F));
    if ((i2 > 320) && (i2 <= 360)) {
      i1 = 6;
    }
    for (;;)
    {
      int i3 = this.p - this.j.getPaddingLeft() - this.j.getPaddingRight();
      if (this.k != null) {
        this.k.notifyDataSetInvalidated();
      }
      this.k = new q(this.i, i3, i1);
      this.k.a(new l(this));
      this.j.setAdapter(this.k);
      this.k.notifyDataSetChanged();
      this.j.requestLayout();
      return;
      if ((i2 > 360) && (i2 <= 400)) {
        i1 = 7;
      } else if ((i2 > 400) && (i2 < 600)) {
        i1 = 8;
      } else if ((i2 >= 600) && (i2 < 720)) {
        i1 = 9;
      } else if (i2 >= 720) {
        i1 = 10;
      }
    }
  }
  
  protected void c()
  {
    if (this.h)
    {
      this.e.setVisibility(0);
      this.d.a().setVisibility(8);
    }
  }
  
  protected void d()
  {
    if (this.h)
    {
      this.e.setVisibility(8);
      this.d.a().setVisibility(0);
    }
  }
  
  public void e()
  {
    if (this.h)
    {
      this.d = null;
      this.h = false;
    }
  }
  
  public void f()
  {
    if (this.d != null) {
      this.d.b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.k
 * JD-Core Version:    0.7.0.1
 */