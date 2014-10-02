package com.viber.voip.messages.conversation.a;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import com.viber.voip.ConversationListView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.conversation.a.a.b.a.c;
import com.viber.voip.messages.conversation.ag;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.conversation.ui.ConversationFragment;
import com.viber.voip.messages.conversation.ui.ba;
import com.viber.voip.messages.conversation.ui.cq;
import com.viber.voip.messages.conversation.v;
import com.viber.voip.messages.h;
import com.viber.voip.messages.ui.bb;

public class o
  extends BaseAdapter
  implements View.OnTouchListener, AbsListView.OnScrollListener, com.viber.voip.stickers.d.b
{
  private static final String b = o.class.getSimpleName();
  private final Runnable a = new p(this);
  private ConversationFragment c;
  private v d;
  private cq e;
  private f f;
  private com.viber.voip.stickers.b g;
  private com.viber.voip.messages.conversation.a.a.b.a.b h;
  private boolean i;
  private s j;
  private int k;
  private boolean l;
  private int m;
  private Handler n = new Handler();
  private s o = new q(this);
  
  public o(ConversationFragment paramConversationFragment, v paramv, cq paramcq, com.viber.voip.stickers.b paramb, boolean paramBoolean, int paramInt, r paramr)
  {
    com.viber.voip.stickers.r.a().a(this);
    this.d = paramv;
    this.c = paramConversationFragment;
    this.e = paramcq;
    this.g = paramb;
    this.i = paramBoolean;
    this.m = paramInt;
    f();
    ViberApplication localViberApplication = ViberApplication.getInstance();
    LayoutInflater localLayoutInflater = (LayoutInflater)localViberApplication.getSystemService("layout_inflater");
    bb localbb = new bb(localViberApplication);
    this.f = new f(localLayoutInflater, paramConversationFragment, paramcq, new h(localViberApplication), paramb, localbb, this.o, paramr, this.j);
  }
  
  private int a(an paraman)
  {
    int i1 = 7;
    if (paraman.U()) {
      i1 = 0;
    }
    do
    {
      do
      {
        return i1;
        if (!paraman.R()) {
          break;
        }
        if (paraman.X()) {
          return 5;
        }
        if (paraman.ae()) {
          return 9;
        }
      } while (paraman.V());
      if (paraman.af()) {
        return 8;
      }
      if (paraman.ah()) {
        return 1;
      }
      return 3;
      if (paraman.X()) {
        return 6;
      }
      if (paraman.ae()) {
        return 10;
      }
    } while (paraman.V());
    if (paraman.ah()) {
      return 2;
    }
    return 4;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 != 0)
    {
      if (this.l) {
        break label45;
      }
      arrayOfInt2 = this.d.a(true, paramInt1, 20);
      this.l = true;
      this.k = paramInt1;
      this.g.a(arrayOfInt2, null);
    }
    label45:
    while ((paramInt1 % 15 != 0) || (this.k == paramInt1))
    {
      int[] arrayOfInt2;
      return;
    }
    boolean bool;
    if (this.k > paramInt1)
    {
      bool = true;
      if (!bool) {
        break label116;
      }
    }
    label116:
    for (int i1 = paramInt1;; i1 = -1 + (paramInt1 + paramInt2))
    {
      int[] arrayOfInt1 = this.d.a(bool, i1, 20);
      this.k = paramInt1;
      this.g.a(arrayOfInt1, null);
      return;
      bool = false;
      break;
    }
  }
  
  private boolean a(an paraman1, an paraman2)
  {
    if ((paraman1 == null) || (paraman2 == null) || (paraman1.U()) || (paraman2.U()) || (paraman1.V()) || (paraman2.V()) || (paraman1.o() != paraman2.o())) {}
    while (((!paraman1.T()) && ((!paraman1.R()) || (!paraman1.l().equals(paraman2.l())))) || (paraman1.m() - paraman2.m() >= 900000L)) {
      return false;
    }
    return true;
  }
  
  private void d(boolean paramBoolean)
  {
    this.h.a(paramBoolean);
    try
    {
      int i1 = this.c.B().j.getFirstVisiblePosition();
      int i2 = this.c.B().j.getLastVisiblePosition();
      for (int i3 = i1; i3 <= i2; i3++)
      {
        int i4 = i3 - i1;
        View localView = this.c.B().j.getChildAt(i4);
        Object localObject = localView.getTag();
        if ((localObject != null) && ((localObject instanceof com.viber.voip.messages.conversation.a.a.a.r)))
        {
          com.viber.voip.messages.conversation.a.a.a.r localr = (com.viber.voip.messages.conversation.a.a.a.r)localView.getTag();
          localr.a((com.viber.voip.messages.conversation.a.a.a)localr.c(), this.h);
        }
      }
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      notifyDataSetChanged();
    }
  }
  
  private void f()
  {
    if (this.i) {}
    for (Object localObject = new c(ViberApplication.getInstance());; localObject = new com.viber.voip.messages.conversation.a.a.b.a.d(ViberApplication.getInstance()))
    {
      this.h = ((com.viber.voip.messages.conversation.a.a.b.a.b)localObject);
      return;
    }
  }
  
  private void g()
  {
    this.n.removeCallbacks(this.a);
    this.n.postDelayed(this.a, 2000L);
  }
  
  public com.viber.voip.messages.conversation.a.a.a a(int paramInt)
  {
    an localan1 = this.d.e(paramInt - 1);
    an localan2 = this.d.e(paramInt);
    an localan3;
    boolean bool1;
    label71:
    int i1;
    label93:
    boolean bool2;
    label116:
    boolean bool3;
    label123:
    boolean bool4;
    label145:
    boolean bool5;
    label165:
    boolean bool6;
    label192:
    boolean bool7;
    label202:
    boolean bool8;
    label212:
    boolean bool9;
    label222:
    ag localag;
    boolean bool10;
    boolean bool11;
    if (getCount() > paramInt + 1)
    {
      localan3 = this.d.e(paramInt + 1);
      if ((this.d.q() == -1) || (localan2.m() <= this.d.n())) {
        break label320;
      }
      bool1 = true;
      if (localan1 == null) {
        break label332;
      }
      if (localan1.m() <= this.d.n()) {
        break label326;
      }
      i1 = 1;
      if ((!this.h.o()) || (!bool1) || (i1 != 0)) {
        break label338;
      }
      bool2 = true;
      if (localan1 != null) {
        break label344;
      }
      bool3 = true;
      if ((bool3) || (bool2) || (!a(localan2, localan1))) {
        break label360;
      }
      bool4 = true;
      if ((this.e == null) || (!this.e.a())) {
        break label366;
      }
      bool5 = true;
      if ((this.e == null) || (!this.e.c(Long.valueOf(localan2.a())))) {
        break label372;
      }
      bool6 = true;
      if (localan1 == null) {
        break label378;
      }
      bool7 = localan1.V();
      if (localan1 == null) {
        break label384;
      }
      bool8 = localan1.U();
      if (localan1 == null) {
        break label390;
      }
      bool9 = localan1.X();
      if ((this.m != 2) && (this.m != 3)) {
        break label408;
      }
      localag = (ag)this.d.e(paramInt);
      bool10 = a(localan3, localan2);
      if (paramInt != 0) {
        break label396;
      }
      bool11 = true;
      label267:
      if (paramInt != -1 + getCount()) {
        break label402;
      }
    }
    label384:
    label390:
    label396:
    label402:
    for (boolean bool12 = true;; bool12 = false)
    {
      return new t(localag, bool2, bool3, bool4, bool10, bool1, bool11, bool12, bool5, bool6, bool7, bool8, bool9);
      localan3 = null;
      break;
      label320:
      bool1 = false;
      break label71;
      label326:
      i1 = 0;
      break label93;
      label332:
      i1 = 0;
      break label93;
      label338:
      bool2 = false;
      break label116;
      label344:
      bool3 = cr.b(localan2.m(), localan1.m());
      break label123;
      label360:
      bool4 = false;
      break label145;
      label366:
      bool5 = false;
      break label165;
      label372:
      bool6 = false;
      break label192;
      label378:
      bool7 = false;
      break label202;
      bool8 = false;
      break label212;
      bool9 = false;
      break label222;
      bool11 = false;
      break label267;
    }
    label408:
    boolean bool13 = a(localan3, localan2);
    boolean bool14;
    if (paramInt == 0)
    {
      bool14 = true;
      if (paramInt != -1 + getCount()) {
        break label476;
      }
    }
    label476:
    for (boolean bool15 = true;; bool15 = false)
    {
      return new u(localan2, bool2, bool3, bool4, bool13, bool1, bool14, bool15, bool5, bool6, bool7, bool8, bool9);
      bool14 = false;
      break;
    }
  }
  
  public com.viber.voip.messages.conversation.a.a.b.a.b a()
  {
    return this.h;
  }
  
  public void a(long paramLong)
  {
    this.h.a(paramLong);
    notifyDataSetChanged();
    if (paramLong != -1L) {
      g();
    }
  }
  
  public void a(s params)
  {
    this.j = params;
  }
  
  public void a(com.viber.voip.stickers.c.a parama)
  {
    notifyDataSetChanged();
  }
  
  public void a(com.viber.voip.stickers.c.d paramd) {}
  
  public void a(com.viber.voip.stickers.c.d paramd, int paramInt) {}
  
  public void a(boolean paramBoolean)
  {
    if (this.i != paramBoolean)
    {
      this.i = paramBoolean;
      f();
      notifyDataSetChanged();
    }
  }
  
  public void a(boolean paramBoolean, com.viber.voip.stickers.c.d paramd) {}
  
  public void b()
  {
    this.h.g();
  }
  
  public void b(long paramLong)
  {
    this.h.b(paramLong);
  }
  
  public void b(com.viber.voip.stickers.c.d paramd) {}
  
  public void b(boolean paramBoolean)
  {
    this.h.b(paramBoolean);
  }
  
  public void c()
  {
    com.viber.voip.stickers.r.a().b(this);
  }
  
  public void c(com.viber.voip.stickers.c.d paramd)
  {
    notifyDataSetChanged();
  }
  
  public void c(boolean paramBoolean)
  {
    notifyDataSetChanged();
  }
  
  public void d()
  {
    this.l = false;
  }
  
  public boolean e()
  {
    return this.d.p();
  }
  
  public int getCount()
  {
    return this.d.getCount();
  }
  
  public long getItemId(int paramInt)
  {
    return this.d.a_(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return a(this.d.e(paramInt));
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.viber.voip.messages.conversation.a.a.a locala = a(paramInt);
    if ((paramView == null) || (paramView.getTag() == null)) {
      paramView = this.f.a(getItemViewType(paramInt));
    }
    ((com.viber.voip.ui.b.a)paramView.getTag()).a(locala, this.h);
    paramView.setTag(2131165266, Long.valueOf(locala.a()));
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return 11;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3);
    if (this.j != null) {
      this.j.a(paramInt1, paramInt2, paramInt3);
    }
    this.o.a(paramInt1, paramInt2, paramInt3);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.j != null) {
      this.j.a(paramInt);
    }
    this.o.a(paramInt);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.j != null) {
      this.j.a(paramMotionEvent);
    }
    this.o.a(paramMotionEvent);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.o
 * JD-Core Version:    0.7.0.1
 */