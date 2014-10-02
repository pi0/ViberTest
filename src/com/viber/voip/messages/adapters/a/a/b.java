package com.viber.voip.messages.adapters.a.a;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.phone.v;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gl;
import java.util.List;

public class b<T extends com.viber.voip.messages.adapters.a.a>
  extends com.viber.voip.ui.b.b<T, com.viber.voip.messages.adapters.a.b.a>
{
  private final int a;
  private f<T> b;
  private boolean c = false;
  private ViewGroup d;
  private View e;
  
  public b(View paramView, com.viber.voip.messages.adapters.a.b.a parama, com.viber.voip.messages.h paramh, bb parambb, w paramw, boolean paramBoolean)
  {
    super(paramView);
    int i = 0;
    if (paramBoolean) {
      i = 1;
    }
    this.a = i;
    this.b = new f(paramView, parama, paramw);
    this.j.add(a(paramView, paramh, parambb));
    this.j.add(a(paramView, parama, paramw, paramh));
    this.j.add(a(paramView));
    this.d = ((ViewGroup)paramView.findViewById(2131165409));
    this.e = paramView;
  }
  
  protected com.viber.voip.ui.b.a<T, com.viber.voip.messages.adapters.a.b.a> a(View paramView)
  {
    return new d(paramView);
  }
  
  protected com.viber.voip.ui.b.a<T, com.viber.voip.messages.adapters.a.b.a> a(View paramView, com.viber.voip.messages.adapters.a.b.a parama, w paramw, com.viber.voip.messages.h paramh)
  {
    return new f(paramView, parama, paramw);
  }
  
  protected com.viber.voip.ui.b.a<T, com.viber.voip.messages.adapters.a.b.a> a(View paramView, com.viber.voip.messages.h paramh, bb parambb)
  {
    return new c(paramView, paramh, parambb);
  }
  
  public void a()
  {
    View localView = this.e.findViewById(2131165360);
    if (localView != null) {
      localView.setVisibility(0);
    }
  }
  
  public void a(T paramT, com.viber.voip.messages.adapters.a.b.a parama)
  {
    super.a(paramT, parama);
    boolean bool1 = paramT.z();
    boolean bool2 = parama.h();
    boolean bool3 = ViberApplication.getInstance().getPhoneApp().a().f(paramT.a());
    boolean bool4;
    if ((!bool1) && (paramT.d()) && (!bool3))
    {
      bool4 = true;
      if (!(this.k instanceof Checkable)) {
        break label105;
      }
      ((Checkable)this.k).setChecked(bool1);
    }
    for (;;)
    {
      this.k.setBackgroundResource(parama.a(bool4, bool2));
      return;
      bool4 = false;
      break;
      label105:
      gl.a(this.k, bool1);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.d != null))
    {
      ImageView localImageView = this.b.a();
      RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)localImageView.getLayoutParams();
      localLayoutParams1.leftMargin = com.viber.voip.messages.extras.image.h.a(16.0F);
      localLayoutParams1.rightMargin = com.viber.voip.messages.extras.image.h.a(10.0F);
      RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)this.d.getLayoutParams();
      localLayoutParams2.rightMargin = (2 * localLayoutParams2.rightMargin);
      localImageView.requestLayout();
      this.c = true;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.adapters.a.a.b
 * JD-Core Version:    0.7.0.1
 */