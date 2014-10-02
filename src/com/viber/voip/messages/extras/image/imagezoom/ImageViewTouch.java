package com.viber.voip.messages.extras.image.imagezoom;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import com.nineoldandroids.view.ViewHelper;

public class ImageViewTouch
  extends e
{
  protected l a;
  protected GestureDetector b;
  protected int c;
  protected float d;
  protected float e;
  protected int f;
  protected b g;
  protected d h;
  protected c i;
  protected View.OnClickListener j;
  protected View.OnTouchListener k;
  
  public ImageViewTouch(Context paramContext)
  {
    super(paramContext);
  }
  
  public ImageViewTouch(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    if (this.k != null) {
      this.k.onTouch((View)getParent(), paramMotionEvent);
    }
  }
  
  protected float a(float paramFloat1, float paramFloat2)
  {
    if (this.f == 1)
    {
      if (paramFloat1 + 2.0F * this.e <= paramFloat2) {
        return paramFloat1 + this.e;
      }
      this.f = -1;
      return paramFloat2;
    }
    this.f = 1;
    return 1.0F;
  }
  
  protected void a()
  {
    super.a();
    this.c = ViewConfiguration.getTouchSlop();
    this.g = new b(this);
    this.h = new d(this);
    this.a = new l(getContext(), this.h);
    if (Build.VERSION.SDK_INT > 7) {}
    for (GestureDetector localGestureDetector = new GestureDetector(getContext(), this.g, null, true);; localGestureDetector = new GestureDetector(getContext(), this.g))
    {
      this.b = localGestureDetector;
      this.d = 1.0F;
      this.f = 1;
      return;
    }
  }
  
  protected void a(float paramFloat)
  {
    super.a(paramFloat);
    if (!this.a.a()) {
      this.d = paramFloat;
    }
  }
  
  public void a(k paramk, boolean paramBoolean)
  {
    super.a(paramk, paramBoolean);
    this.e = (getMaxZoom() / 3.0F);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    if (ViewHelper.getTranslationY((View)getParent()) != 0.0F)
    {
      a(paramMotionEvent);
      return false;
    }
    this.a.a(paramMotionEvent);
    if (!this.a.a()) {
      this.b.onTouchEvent(paramMotionEvent);
    }
    switch (0xFF & paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      int m;
      if (!this.a.a())
      {
        boolean bool = getScale() < 1.0F;
        m = 0;
        if (!bool) {}
      }
      else
      {
        m = 1;
      }
      if (m == 0) {
        a(paramMotionEvent);
      }
      return true;
      if (getScale() < 1.0F) {
        c(1.0F, 50.0F);
      }
    }
  }
  
  public void setExternalScrollListener(c paramc)
  {
    this.i = paramc;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.j = paramOnClickListener;
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.k = paramOnTouchListener;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.ImageViewTouch
 * JD-Core Version:    0.7.0.1
 */