package com.viber.voip.messages.adapters.a.b;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.ui.MessagesFragmentModeManager;
import com.viber.voip.util.gl;

public class a
  extends com.viber.voip.ui.b.a.a
{
  public static final int a = h.a(30.0F);
  public static final int b;
  private final MessagesFragmentModeManager c;
  private final int d;
  private final String e;
  private final Drawable f;
  private final Drawable g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  private final int k;
  private final int l;
  private final int m;
  private final int n;
  private final int o;
  private final ColorStateList p;
  private final ColorStateList q;
  private final ColorStateList r;
  private final ColorStateList s;
  private final ColorStateList t;
  private final ColorStateList u;
  private final int v;
  private final String w;
  private final String x;
  private final int y;
  private final boolean z;
  
  static
  {
    if (h.a(1.0F) == 0) {}
    for (int i1 = 2;; i1 = h.a(1.0F))
    {
      b = i1;
      return;
    }
  }
  
  public a(Context paramContext, MessagesFragmentModeManager paramMessagesFragmentModeManager, boolean paramBoolean)
  {
    super(paramContext);
    this.c = paramMessagesFragmentModeManager;
    this.h = ViberApplication.isTablet();
    this.i = gl.a(this.C);
    if ((this.c != null) && (this.c.v())) {}
    for (boolean bool = true;; bool = false)
    {
      this.j = bool;
      this.d = this.C.getResources().getInteger(2131427334);
      this.e = this.C.getResources().getString(2131493976);
      this.f = this.C.getResources().getDrawable(2130838334);
      this.g = this.C.getResources().getDrawable(2130838289);
      this.k = 2130837716;
      this.l = 2130837711;
      this.m = 2130837708;
      this.n = 2130837715;
      this.o = 2130837709;
      this.p = this.C.getResources().getColorStateList(2131296525);
      this.q = this.C.getResources().getColorStateList(2131296526);
      this.r = this.C.getResources().getColorStateList(2131296518);
      this.s = this.C.getResources().getColorStateList(2131296519);
      this.t = this.C.getResources().getColorStateList(2131296486);
      this.u = this.C.getResources().getColorStateList(2131296487);
      this.v = this.C.getResources().getColor(2131296339);
      this.w = this.C.getResources().getString(2131494204);
      this.x = this.C.getResources().getString(2131494051);
      this.y = h.a(80.0F);
      this.z = paramBoolean;
      return;
    }
  }
  
  private int a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.n;
    }
    return this.o;
  }
  
  private int c(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      return this.k;
    }
    if (paramBoolean2) {
      return this.l;
    }
    return this.m;
  }
  
  public int a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.h) || (this.j)) {
      return c(paramBoolean1, paramBoolean2);
    }
    return a(paramBoolean1);
  }
  
  public boolean a()
  {
    return this.i;
  }
  
  public int b()
  {
    return this.d;
  }
  
  public ColorStateList b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      return this.p;
    }
    return this.q;
  }
  
  public String c()
  {
    return this.e;
  }
  
  public Drawable d()
  {
    return this.f;
  }
  
  public Drawable e()
  {
    return this.g;
  }
  
  public int f()
  {
    return this.v;
  }
  
  public String g()
  {
    if (this.c != null) {
      return this.c.t();
    }
    return "";
  }
  
  public boolean h()
  {
    return (this.c != null) && (this.c.l());
  }
  
  public String i()
  {
    return this.w;
  }
  
  public String j()
  {
    return this.x;
  }
  
  public boolean k()
  {
    return this.z;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.b.a
 * JD-Core Version:    0.7.0.1
 */