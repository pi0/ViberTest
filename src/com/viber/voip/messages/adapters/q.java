package com.viber.voip.messages.adapters;

import android.content.Context;
import android.os.Handler;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.actionbarsherlock.internal.nineoldandroids.animation.ValueAnimator;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.stickers.b;
import com.viber.voip.stickers.p;
import com.viber.voip.stickers.ui.StickerGrid;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.List;

public class q
  extends BaseAdapter
{
  private static long b = 100L;
  private static final String r = q.class.getSimpleName();
  LayoutInflater a;
  private Context c;
  private List<t> d;
  private com.viber.voip.stickers.r e;
  private com.viber.voip.messages.ui.u f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private int k;
  private int l;
  private SparseArray<v> m = new SparseArray();
  private com.viber.voip.stickers.ui.a n;
  private b o;
  private Handler p;
  private Handler q;
  
  static
  {
    ValueAnimator.setFrameDelay(50L);
  }
  
  public q(Context paramContext, int paramInt, b paramb, com.viber.voip.messages.ui.u paramu)
  {
    this.c = paramContext;
    this.f = paramu;
    this.o = paramb;
    this.e = com.viber.voip.stickers.r.a();
    this.n = new com.viber.voip.stickers.ui.a(this.c);
    this.d = new ArrayList();
    if (!gl.e(this.c)) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      this.a = LayoutInflater.from(paramContext);
      this.q = dc.a(dk.a);
      this.p = dc.a(dk.h);
      a(paramInt, 0, false, null);
      return;
    }
  }
  
  private static void b(String paramString) {}
  
  public int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IndexOutOfBoundsException("firstItem can't be negative");
    }
    if (paramInt2 > this.d.size()) {
      throw new IndexOutOfBoundsException("lastItem can't exceed number of items");
    }
    int i1 = 0;
    if (paramInt1 < paramInt2)
    {
      p localp = ((t)this.d.get(paramInt1)).c;
      if (paramInt1 == -1 + this.d.size()) {}
      for (boolean bool = true;; bool = false)
      {
        int i2 = i1 + this.n.a(this.c, localp, bool);
        paramInt1++;
        i1 = i2;
        break;
      }
    }
    return i1;
  }
  
  public t a(int paramInt)
  {
    return (t)this.d.get(paramInt);
  }
  
  public void a()
  {
    this.k = (1 + this.k);
    notifyDataSetChanged();
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean, u paramu)
  {
    long l1 = System.currentTimeMillis();
    b("setPackageId schedule: " + paramInt1);
    r localr = new r(this, paramInt1, l1, paramInt2, paramu, paramBoolean);
    if (paramBoolean)
    {
      this.p.postDelayed(localr, b);
      return;
    }
    localr.run();
  }
  
  public void a(com.viber.voip.stickers.c.a parama)
  {
    v localv = (v)this.m.get(parama.b);
    if (localv != null)
    {
      localv.a();
      v.a(localv, false);
    }
    this.k = (1 + this.k);
    notifyDataSetChanged();
  }
  
  public void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
    this.j = paramBoolean;
    if (paramBoolean) {
      a();
    }
  }
  
  public boolean b()
  {
    if (!this.h)
    {
      this.k = (1 + this.k);
      this.h = true;
      return true;
    }
    return false;
  }
  
  public boolean c()
  {
    boolean bool1 = this.i;
    boolean bool2 = false;
    if (bool1)
    {
      this.i = false;
      this.k = (1 + this.k);
      bool2 = true;
    }
    return bool2;
  }
  
  public boolean d()
  {
    if (!this.i)
    {
      this.i = true;
      return true;
    }
    return false;
  }
  
  public boolean e()
  {
    return this.j;
  }
  
  public int getCount()
  {
    return this.d.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null) {
      ((z)paramView.getTag()).a();
    }
    z localz;
    if ((paramView == null) || (this.l > ((z)paramView.getTag()).c.length))
    {
      localz = new z(this, this.l);
      localz.a.setTag(localz);
    }
    for (;;)
    {
      localz.a(a(paramInt), paramInt);
      return localz.a;
      localz = (z)paramView.getTag();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.q
 * JD-Core Version:    0.7.0.1
 */