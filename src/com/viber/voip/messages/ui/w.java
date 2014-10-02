package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver;
import com.viber.voip.ViberApplication;
import com.viber.voip.k.a;

public class w
  implements View.OnClickListener, bn
{
  private Context a;
  private View b;
  private View c;
  private View d;
  private View e;
  private View f;
  private View g;
  private View h;
  private View i;
  private ae j;
  private ab k;
  private ai l;
  private ac m;
  private ah n;
  private af o;
  private ag p;
  private View q;
  private View r;
  private Rect s = new Rect();
  private Rect t = new Rect();
  private Rect u = new Rect();
  private boolean v;
  private int w;
  private boolean x;
  
  public w(Context paramContext)
  {
    this.a = paramContext;
  }
  
  private void a()
  {
    a(this.j);
    a(this.k);
    a(this.l);
    a(this.m);
    a(this.n);
    a(this.o);
    a(this.p);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    if (paramView != null)
    {
      if (paramBoolean) {
        this = null;
      }
      paramView.setOnClickListener(this);
    }
  }
  
  public View a(View paramView)
  {
    if (paramView != null) {
      return paramView;
    }
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.a);
    int i1;
    View localView;
    if (ViberApplication.hideDoodle())
    {
      i1 = 2130903248;
      localView = localLayoutInflater.inflate(i1, null);
      this.b = localView.findViewById(2131165900);
      this.c = localView.findViewById(2131165903);
      this.e = localView.findViewById(2131165907);
      this.f = localView.findViewById(2131165904);
      this.d = localView.findViewById(2131165906);
      this.g = localView.findViewById(2131165901);
      this.h = localView.findViewById(2131165905);
      this.h.setVisibility(8);
      this.i = localView.findViewById(2131165902);
      if ((!a.a().b()) || (this.x)) {
        break label203;
      }
      this.i.setVisibility(0);
      b(localView);
    }
    for (;;)
    {
      if (this.x) {
        this.e.setVisibility(8);
      }
      this.w = this.a.getResources().getDimensionPixelSize(2131362145);
      a();
      return localView;
      i1 = 2130903247;
      break;
      label203:
      this.i.setVisibility(8);
    }
  }
  
  public void a(ab paramab)
  {
    this.k = paramab;
    View localView = this.g;
    if (paramab == null) {}
    for (boolean bool = true;; bool = false)
    {
      a(localView, bool);
      return;
    }
  }
  
  public void a(ac paramac)
  {
    this.m = paramac;
    View localView = this.f;
    if (paramac == null) {}
    for (boolean bool = true;; bool = false)
    {
      a(localView, bool);
      return;
    }
  }
  
  public void a(ad paramad)
  {
    a(paramad);
    a(paramad);
    a(paramad);
    a(paramad);
    a(paramad);
    a(paramad);
    a(paramad);
  }
  
  public void a(ae paramae)
  {
    boolean bool1 = true;
    this.j = paramae;
    View localView1 = this.b;
    boolean bool2;
    View localView2;
    if (paramae == null)
    {
      bool2 = bool1;
      a(localView1, bool2);
      localView2 = this.c;
      if (paramae != null) {
        break label50;
      }
    }
    for (;;)
    {
      a(localView2, bool1);
      return;
      bool2 = false;
      break;
      label50:
      bool1 = false;
    }
  }
  
  public void a(af paramaf)
  {
    this.o = paramaf;
    View localView = this.e;
    if (paramaf == null) {}
    for (boolean bool = true;; bool = false)
    {
      a(localView, bool);
      return;
    }
  }
  
  public void a(ag paramag)
  {
    this.p = paramag;
    View localView = this.h;
    if (paramag == null) {}
    for (boolean bool = true;; bool = false)
    {
      a(localView, bool);
      return;
    }
  }
  
  public void a(ah paramah)
  {
    this.n = paramah;
    View localView = this.d;
    if (paramah == null) {}
    for (boolean bool = true;; bool = false)
    {
      a(localView, bool);
      return;
    }
  }
  
  public void a(ai paramai)
  {
    this.l = paramai;
    View localView = this.i;
    if (paramai == null) {}
    for (boolean bool = true;; bool = false)
    {
      a(localView, bool);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.x = paramBoolean;
  }
  
  public void b(View paramView)
  {
    if (this.i == null) {}
    do
    {
      do
      {
        return;
        if (this.i.getVisibility() != 0) {
          this.i.setVisibility(0);
        }
      } while ((!a.a().f()) || (this.i.getVisibility() != 0));
      this.r = paramView.findViewById(2131165908);
      this.q = paramView.findViewById(2131165823);
    } while (a.a().c());
    this.i.getViewTreeObserver().addOnPreDrawListener(new x(this));
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.b) {
      this.j.b();
    }
    do
    {
      return;
      if (paramView == this.c)
      {
        this.j.c();
        return;
      }
      if (paramView == this.g)
      {
        this.k.e();
        return;
      }
      if (paramView == this.f)
      {
        this.m.a();
        return;
      }
      if (paramView == this.e)
      {
        this.o.g();
        return;
      }
      if (paramView == this.d)
      {
        this.n.d();
        return;
      }
      if (paramView == this.i)
      {
        this.l.f();
        return;
      }
    } while (paramView != this.h);
    this.p.h();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.w
 * JD-Core Version:    0.7.0.1
 */