package com.viber.voip.messages.adapters.a.a;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.viber.voip.messages.a.b;
import com.viber.voip.util.b.aa;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;

public class f<T extends com.viber.voip.messages.adapters.a.a>
  extends com.viber.voip.ui.b.a<T, com.viber.voip.messages.adapters.a.b.a>
{
  protected final ImageView a;
  protected ImageView[] b;
  protected final w c;
  protected final x d;
  protected final x e;
  protected final x f;
  protected final x g;
  protected final x h;
  protected final x i;
  
  protected f(View paramView, com.viber.voip.messages.adapters.a.b.a parama, w paramw)
  {
    super(paramView);
    this.c = paramw;
    this.d = x.a(paramView.getContext());
    this.e = x.a(paramView.getContext(), 2130838213, aa.b, false);
    this.f = x.a(paramView.getContext(), 2130838216, aa.b, false);
    this.g = x.a(paramView.getContext(), 2130838214, aa.b, false);
    this.h = x.a(paramView.getContext(), 2130838217, aa.b, false);
    this.i = x.a(paramView.getContext(), 2130838215, aa.b, false);
    this.a = ((ImageView)paramView.findViewById(2131165398));
    a(parama);
  }
  
  private x a(Integer paramInteger)
  {
    if (paramInteger == null) {
      return this.d;
    }
    if (paramInteger.intValue() == 1) {
      return this.d;
    }
    if (paramInteger.intValue() == 2) {
      return this.e;
    }
    if (paramInteger.intValue() == 3) {
      return this.i;
    }
    if (paramInteger.intValue() == 4) {
      return this.h;
    }
    if (paramInteger.intValue() == 5) {
      return this.g;
    }
    if (paramInteger.intValue() == 6) {
      return this.f;
    }
    return this.d;
  }
  
  private void a(int paramInt)
  {
    if (paramInt <= 0) {}
    int j;
    FrameLayout.LayoutParams localLayoutParams4;
    do
    {
      do
      {
        FrameLayout.LayoutParams localLayoutParams7;
        do
        {
          int m;
          ViewGroup.LayoutParams localLayoutParams9;
          do
          {
            int n;
            ViewGroup.LayoutParams localLayoutParams10;
            do
            {
              return;
              if (paramInt > 4) {
                paramInt = 4;
              }
              if (paramInt != 1) {
                break;
              }
              n = 2 * com.viber.voip.messages.adapters.a.b.a.a + com.viber.voip.messages.adapters.a.b.a.b;
              this.b[1].setTag(2131165264, Integer.valueOf(1));
              localLayoutParams10 = this.b[1].getLayoutParams();
            } while ((localLayoutParams10.height == n) && (localLayoutParams10.width == n));
            localLayoutParams10.height = n;
            localLayoutParams10.width = n;
            return;
            if (paramInt != 2) {
              break;
            }
            m = 2 * com.viber.voip.messages.adapters.a.b.a.a + com.viber.voip.messages.adapters.a.b.a.b;
            this.b[1].setTag(2131165264, Integer.valueOf(2));
            ViewGroup.LayoutParams localLayoutParams8 = this.b[1].getLayoutParams();
            if ((localLayoutParams8.height != m) || (localLayoutParams8.width != com.viber.voip.messages.adapters.a.b.a.a))
            {
              localLayoutParams8.height = m;
              localLayoutParams8.width = com.viber.voip.messages.adapters.a.b.a.a;
            }
            this.b[2].setTag(2131165264, Integer.valueOf(2));
            localLayoutParams9 = this.b[2].getLayoutParams();
          } while ((localLayoutParams9.height == m) && (localLayoutParams9.width == com.viber.voip.messages.adapters.a.b.a.a));
          localLayoutParams9.height = m;
          localLayoutParams9.width = com.viber.voip.messages.adapters.a.b.a.a;
          return;
          if (paramInt != 3) {
            break;
          }
          int k = 2 * com.viber.voip.messages.adapters.a.b.a.a + com.viber.voip.messages.adapters.a.b.a.b;
          this.b[1].setTag(2131165264, Integer.valueOf(2));
          FrameLayout.LayoutParams localLayoutParams5 = (FrameLayout.LayoutParams)this.b[1].getLayoutParams();
          if ((localLayoutParams5.height != k) || (localLayoutParams5.width != com.viber.voip.messages.adapters.a.b.a.a))
          {
            localLayoutParams5.height = k;
            localLayoutParams5.width = com.viber.voip.messages.adapters.a.b.a.a;
          }
          this.b[2].setTag(2131165264, Integer.valueOf(4));
          FrameLayout.LayoutParams localLayoutParams6 = (FrameLayout.LayoutParams)this.b[2].getLayoutParams();
          if ((localLayoutParams6.height != com.viber.voip.messages.adapters.a.b.a.a) || (localLayoutParams6.width != com.viber.voip.messages.adapters.a.b.a.a))
          {
            localLayoutParams6.height = com.viber.voip.messages.adapters.a.b.a.a;
            localLayoutParams6.width = com.viber.voip.messages.adapters.a.b.a.a;
          }
          this.b[3].setTag(2131165264, Integer.valueOf(6));
          localLayoutParams7 = (FrameLayout.LayoutParams)this.b[3].getLayoutParams();
        } while ((localLayoutParams7.height == com.viber.voip.messages.adapters.a.b.a.a) && (localLayoutParams7.width == com.viber.voip.messages.adapters.a.b.a.a) && (localLayoutParams7.gravity == 85));
        localLayoutParams7.height = com.viber.voip.messages.adapters.a.b.a.a;
        localLayoutParams7.width = com.viber.voip.messages.adapters.a.b.a.a;
        localLayoutParams7.gravity = 85;
        return;
      } while (paramInt != 4);
      j = com.viber.voip.messages.adapters.a.b.a.a;
      this.b[1].setTag(2131165264, Integer.valueOf(3));
      FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)this.b[1].getLayoutParams();
      if ((localLayoutParams1.height != j) || (localLayoutParams1.width != j))
      {
        localLayoutParams1.height = j;
        localLayoutParams1.width = j;
      }
      this.b[2].setTag(2131165264, Integer.valueOf(4));
      FrameLayout.LayoutParams localLayoutParams2 = (FrameLayout.LayoutParams)this.b[2].getLayoutParams();
      if ((localLayoutParams2.height != j) || (localLayoutParams2.width != j))
      {
        localLayoutParams2.height = j;
        localLayoutParams2.width = j;
      }
      this.b[3].setTag(2131165264, Integer.valueOf(5));
      FrameLayout.LayoutParams localLayoutParams3 = (FrameLayout.LayoutParams)this.b[3].getLayoutParams();
      if ((localLayoutParams3.height != j) || (localLayoutParams3.width != j) || (localLayoutParams3.gravity != 83))
      {
        localLayoutParams3.height = j;
        localLayoutParams3.width = j;
        localLayoutParams3.gravity = 83;
      }
      this.b[4].setTag(2131165264, Integer.valueOf(6));
      localLayoutParams4 = (FrameLayout.LayoutParams)this.b[4].getLayoutParams();
    } while ((localLayoutParams4.height == j) && (localLayoutParams4.width == j));
    localLayoutParams4.height = j;
    localLayoutParams4.width = j;
  }
  
  ImageView a()
  {
    return this.a;
  }
  
  public void a(T paramT, com.viber.voip.messages.adapters.a.b.a parama)
  {
    boolean bool1 = paramT.e();
    boolean bool2 = parama.a();
    boolean bool3 = paramT.f();
    boolean bool4 = paramT.h();
    int j = parama.b();
    long[] arrayOfLong = paramT.p();
    long l = paramT.q();
    this.a.setTag(2131165262, Boolean.valueOf(false));
    if (bool1)
    {
      a(paramT, bool2, j, arrayOfLong, l);
      return;
    }
    a(bool3, bool4, arrayOfLong, l, parama.d(), parama.e());
  }
  
  protected void a(T paramT, boolean paramBoolean, int paramInt, long[] paramArrayOfLong, long paramLong)
  {
    int j = 0;
    if (paramArrayOfLong != null) {
      for (int m = 0; m < paramArrayOfLong.length; m++) {
        if ((m < paramInt) && (paramArrayOfLong[m] > 0L)) {
          j++;
        }
      }
    }
    a(j);
    this.c.a(b.d().a(paramArrayOfLong[0], true), this.b[0], a((Integer)this.b[0].getTag(2131165264)));
    int k = 1;
    if (k < 5)
    {
      ImageView localImageView = this.b[k];
      long l = paramArrayOfLong[(k - 1)];
      if ((k - 1 < paramInt) && (l > 0L))
      {
        localImageView.setVisibility(0);
        this.c.a(b.d().a(l, true), localImageView, a((Integer)localImageView.getTag(2131165264)));
      }
      for (;;)
      {
        k++;
        break;
        localImageView.setVisibility(4);
      }
    }
  }
  
  protected void a(com.viber.voip.messages.adapters.a.b.a parama)
  {
    this.b = new ImageView[5];
    this.b[0] = this.a;
    this.b[1] = ((ImageView)this.k.findViewById(2131165405));
    this.b[2] = ((ImageView)this.k.findViewById(2131165406));
    this.b[3] = ((ImageView)this.k.findViewById(2131165407));
    this.b[4] = ((ImageView)this.k.findViewById(2131165408));
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2, long[] paramArrayOfLong, long paramLong, Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this.a.setVisibility(0);
    if (paramBoolean1)
    {
      ImageView localImageView = this.a;
      if (paramBoolean2) {}
      for (;;)
      {
        localImageView.setImageDrawable(paramDrawable2);
        return;
        paramDrawable2 = paramDrawable1;
      }
    }
    w localw = this.c;
    com.viber.voip.messages.a.a locala = b.d();
    long l = paramArrayOfLong[0];
    boolean bool1 = paramLong < 0L;
    boolean bool2 = false;
    if (bool1) {
      bool2 = true;
    }
    localw.a(locala.a(l, bool2), this.a, this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.f
 * JD-Core Version:    0.7.0.1
 */