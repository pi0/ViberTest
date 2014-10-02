package com.viber.voip.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.ui.GenericWebViewActivity;
import com.viber.voip.util.gl;

public class f
  implements View.OnClickListener
{
  private Context a;
  private FrameLayout b;
  private FrameLayout c;
  private boolean d;
  private h e;
  private i f;
  
  public f(Context paramContext, FrameLayout paramFrameLayout, h paramh, i parami)
  {
    this.a = paramContext;
    this.b = paramFrameLayout;
    this.e = paramh;
    this.f = parami;
  }
  
  @TargetApi(16)
  public static void a(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramViewTreeObserver.removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
  }
  
  private void d()
  {
    if (this.e != null) {
      this.e.e(this.d);
    }
  }
  
  public void a()
  {
    this.c = ((FrameLayout)LayoutInflater.from(this.a).inflate(2130903178, null));
    this.c.findViewById(2131165729).setOnClickListener(this);
    this.c.findViewById(2131165717).setOnClickListener(this);
    ImageView localImageView = (ImageView)this.c.findViewById(2131165730);
    View localView = this.c.findViewById(2131165731);
    int i = this.a.getResources().getDimensionPixelSize(2131362226);
    if (gl.e(this.a)) {
      localView.getViewTreeObserver().addOnGlobalLayoutListener(new g(this, localImageView, localView, i));
    }
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, this.a.getResources().getDimensionPixelSize(2131362223));
    localLayoutParams.gravity = 80;
    this.b.addView(this.c, localLayoutParams);
    this.d = true;
    d();
  }
  
  public void b()
  {
    this.b.removeView(this.c);
    this.d = false;
    d();
  }
  
  public boolean c()
  {
    return this.d;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      do
      {
        return;
        GenericWebViewActivity.a(this.a, bc.b().S, this.a.getString(2131494481));
        b();
      } while (this.f == null);
      this.f.a();
      return;
      b();
    } while (this.f == null);
    this.f.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.f.f
 * JD-Core Version:    0.7.0.1
 */