package com.viber.voip;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.messages.conversation.a.a.b.a.b;
import com.viber.voip.messages.conversation.a.g;
import com.viber.voip.messages.conversation.a.o;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.ui.ai;
import com.viber.voip.ui.ak;
import com.viber.voip.ui.t;
import com.viber.voip.util.gl;

public class ConversationListView
  extends t
{
  public static final String a = ConversationListView.class.getSimpleName();
  private static final int z = h.a(10.0F);
  private int A = 1;
  private boolean B;
  private boolean C;
  private int D;
  private boolean E;
  private boolean F;
  private int G;
  private TextView H;
  private int I;
  private Runnable J = new x(this);
  private TextView K;
  private g L;
  public final Handler b = dc.a(dk.a);
  
  public ConversationListView(Context paramContext)
  {
    super(new ContextThemeWrapper(paramContext, 2131558756));
  }
  
  public ConversationListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (gl.b())
    {
      setOverscrollHeader(null);
      setOverscrollFooter(null);
    }
    this.C = true;
    setOnHierarchyChangeListener(new y(this));
  }
  
  public ConversationListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(new ContextThemeWrapper(paramContext, 2131558756), paramAttributeSet, paramInt);
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0) {}
    int i;
    int j;
    do
    {
      View localView;
      do
      {
        return;
        localView = getChildAt(-1 + getChildCount());
      } while (localView == null);
      i = paramInt2 - localView.getTop();
      j = getPositionForView(localView);
    } while (j <= 0);
    setSelectionFromTop(j, paramInt1 - i);
  }
  
  private void w()
  {
    if (getChildCount() < 2) {}
    do
    {
      return;
      if ((this.H != null) && (this.H.getVisibility() == 4)) {
        this.H.setVisibility(0);
      }
      this.H = ((TextView)getChildAt(this.q).findViewById(2131165411));
    } while ((this.H == null) || (this.H.getVisibility() != 0));
    this.H.setVisibility(4);
  }
  
  protected float a(int paramInt, float paramFloat)
  {
    if ((this.B) && (this.L != null) && (this.L.i() != null)) {
      ViewHelper.setTranslationY(this.L.i(), paramFloat);
    }
    return super.a(paramInt, paramFloat);
  }
  
  public void a()
  {
    removeCallbacks(this.J);
    this.E = false;
    this.F = true;
    this.D = -1;
    requestLayout();
  }
  
  public void a(int paramInt)
  {
    removeCallbacks(this.J);
    this.E = false;
    this.F = false;
    this.D = paramInt;
    requestLayout();
  }
  
  protected void a(int paramInt, View paramView)
  {
    if (paramView != null)
    {
      View localView1 = paramView.findViewById(2131165411);
      if (localView1 != null)
      {
        this.o.d = (localView1.getTop() - this.o.e.getPaddingTop());
        View localView2 = paramView.findViewById(2131165960);
        if (localView2 != null)
        {
          ai localai = this.o;
          localai.d += localView2.getTop();
        }
      }
    }
    super.a(paramInt, paramView);
  }
  
  public void a(ak paramak)
  {
    if (!this.l) {
      return;
    }
    o localo = this.L.a();
    if ((paramak != null) && (localo != null))
    {
      b localb = localo.a();
      if (localb != null)
      {
        this.K.setTextColor(localb.b());
        this.K.setText(paramak.b());
      }
    }
    w();
  }
  
  @SuppressLint({"NewApi"})
  public boolean a(boolean paramBoolean)
  {
    if (((paramBoolean) && (!b())) || (this.A != 1)) {
      return false;
    }
    a();
    return true;
  }
  
  protected void b(int paramInt)
  {
    if ((paramInt == 65793) && (this.L != null)) {
      this.L.c();
    }
    super.b(paramInt);
  }
  
  public boolean b()
  {
    ListAdapter localListAdapter = getAdapter();
    boolean bool = false;
    if (localListAdapter != null)
    {
      View localView = getChildAt(-2 + getChildCount());
      bool = false;
      if (localView != null)
      {
        int i = getChildCount();
        bool = false;
        if (i > 0)
        {
          int j = getLastVisiblePosition();
          int k = -2 + getAdapter().getCount();
          bool = false;
          if (j >= k)
          {
            int m = getChildAt(-2 + getChildCount()).getBottom();
            int n = getHeight() + z;
            bool = false;
            if (m <= n) {
              bool = true;
            }
          }
        }
      }
    }
    return bool;
  }
  
  protected ai c()
  {
    ai localai = new ai(false);
    localai.j = ((int)getContext().getResources().getDimension(2131362208));
    localai.e = inflate(getContext(), 2130903172, null);
    localai.f = ((LinearLayout)localai.e.findViewById(2131165710));
    localai.e.requestLayout();
    this.K = ((TextView)localai.e.findViewById(2131165711));
    this.I = getContext().getResources().getColor(2131296430);
    this.K.setShadowLayer(1.0F, 0.0F, 1.0F, this.I);
    return localai;
  }
  
  protected void c(int paramInt)
  {
    super.c(paramInt);
  }
  
  public boolean d()
  {
    if ((getChildCount() == 0) || (this.L == null)) {}
    o localo;
    View localView;
    Object localObject;
    do
    {
      do
      {
        return false;
        localo = this.L.a();
        localView = getChildAt(-1 + getChildCount());
      } while (localView == null);
      localObject = localView.getTag(2131165266);
    } while ((localObject == null) || (!(localObject instanceof Long)));
    long l = ((Long)localObject).longValue();
    int i = localView.getTop();
    int j = 0;
    if (j < localo.getCount()) {
      if (localo.getItemId(j) != l) {}
    }
    for (;;)
    {
      if (j != -1) {
        setSelectionFromTop(j + 1, i);
      }
      return true;
      j++;
      break;
      j = -1;
    }
  }
  
  protected boolean d(int paramInt)
  {
    return (this.L != null) && (paramInt == -2 + this.L.getCount());
  }
  
  public void e()
  {
    a(false);
  }
  
  public void f()
  {
    super.f();
  }
  
  public void g()
  {
    if (this.L != null) {
      this.L.notifyDataSetChanged();
    }
  }
  
  protected int getHeaderTag()
  {
    return -1;
  }
  
  protected void layoutChildren()
  {
    if (!this.E)
    {
      this.E = true;
      postDelayed(this.J, 300L);
    }
    if (this.F) {
      setSelectionFromTop(getCount(), -32768);
    }
    for (;;)
    {
      super.layoutChildren();
      return;
      if (this.D != -1) {
        setSelectionFromTop(this.D, 0);
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(paramParcelable);
    setSelection(getCount());
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    b(paramInt2, paramInt4);
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if ((paramListAdapter instanceof g))
    {
      this.L = ((g)paramListAdapter);
      this.G = this.L.a().a().a();
      this.o.c(this.G);
    }
    super.setAdapter(paramListAdapter);
    setPullState(5);
  }
  
  public void setHasNew(boolean paramBoolean)
  {
    this.B = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ConversationListView
 * JD-Core Version:    0.7.0.1
 */