package com.slidingmenu.lib;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.viber.voip.bb;
import java.lang.reflect.Method;

public class SlidingMenu
  extends RelativeLayout
{
  private boolean a = false;
  private a b;
  private f c;
  private m d;
  private k e;
  private o f;
  private p g;
  private Handler h = new Handler();
  
  public SlidingMenu(Activity paramActivity, int paramInt)
  {
    this(paramActivity, null);
    a(paramActivity, paramInt);
  }
  
  public SlidingMenu(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -1);
    this.c = new f(paramContext);
    addView(this.c, localLayoutParams1);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
    this.b = new a(paramContext);
    addView(this.b, localLayoutParams2);
    this.b.setCustomViewBehind(this.c);
    this.c.setCustomViewAbove(this.b);
    this.b.setOnPageChangeListener(new g(this));
    this.b.setDragListener(new h(this));
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.SlidingMenu);
    setMode(localTypedArray.getInt(1, 0));
    int i = localTypedArray.getResourceId(2, -1);
    if (i != -1)
    {
      setContent(i);
      int j = localTypedArray.getResourceId(3, -1);
      if (j == -1) {
        break label287;
      }
      setMenu(j);
    }
    int k;
    int m;
    for (;;)
    {
      setTouchModeAbove(localTypedArray.getInt(7, 0));
      setTouchModeBehind(localTypedArray.getInt(8, 0));
      k = (int)localTypedArray.getDimension(4, -1.0F);
      m = (int)localTypedArray.getDimension(5, -1.0F);
      if ((k == -1) || (m == -1)) {
        break label302;
      }
      throw new IllegalStateException("Cannot set both behindOffset and behindWidth for a SlidingMenu");
      setContent(new FrameLayout(paramContext));
      break;
      label287:
      setMenu(new FrameLayout(paramContext));
    }
    label302:
    if (k != -1) {
      setBehindOffset(k);
    }
    for (;;)
    {
      setBehindScrollScale(localTypedArray.getFloat(6, 0.33F));
      int n = localTypedArray.getResourceId(9, -1);
      if (n != -1) {
        setShadowDrawable(n);
      }
      setShadowWidth((int)localTypedArray.getDimension(10, 0.0F));
      setFadeEnabled(localTypedArray.getBoolean(11, true));
      setFadeDegree(localTypedArray.getFloat(12, 0.33F));
      setSelectorEnabled(localTypedArray.getBoolean(13, false));
      int i1 = localTypedArray.getResourceId(0, -1);
      if (i1 != -1) {
        setSelectorDrawable(i1);
      }
      localTypedArray.recycle();
      return;
      if (m != -1) {
        setBehindWidth(m);
      } else {
        setBehindOffset(0);
      }
    }
  }
  
  public void a()
  {
    a(true);
  }
  
  @TargetApi(11)
  public void a(float paramFloat)
  {
    if (Build.VERSION.SDK_INT < 11) {
      return;
    }
    if ((paramFloat > 0.0F) && (paramFloat < 1.0F)) {}
    for (int i = 1;; i = 0)
    {
      int j = 0;
      if (i != 0) {
        j = 2;
      }
      if (j == getContent().getLayerType()) {
        break;
      }
      this.h.post(new i(this, j));
      return;
    }
  }
  
  public void a(Activity paramActivity, int paramInt)
  {
    a(paramActivity, paramInt, false);
  }
  
  public void a(Activity paramActivity, int paramInt, boolean paramBoolean)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT");
    }
    if (getParent() != null) {
      throw new IllegalStateException("This SlidingMenu appears to already be attached");
    }
    TypedArray localTypedArray = paramActivity.getTheme().obtainStyledAttributes(new int[] { 16842836 });
    int i = localTypedArray.getResourceId(0, 0);
    localTypedArray.recycle();
    switch (paramInt)
    {
    }
    View localView;
    do
    {
      return;
      this.a = false;
      ViewGroup localViewGroup2 = (ViewGroup)paramActivity.getWindow().getDecorView();
      ViewGroup localViewGroup3 = (ViewGroup)localViewGroup2.getChildAt(0);
      localViewGroup3.setBackgroundResource(i);
      localViewGroup2.removeView(localViewGroup3);
      localViewGroup2.addView(this);
      setContent(localViewGroup3);
      return;
      this.a = paramBoolean;
      ViewGroup localViewGroup1 = (ViewGroup)paramActivity.findViewById(16908290);
      localView = localViewGroup1.getChildAt(0);
      localViewGroup1.removeView(localView);
      localViewGroup1.addView(this);
      setContent(localView);
    } while (localView.getBackground() != null);
    localView.setBackgroundResource(i);
  }
  
  public void a(View paramView)
  {
    this.b.a(paramView);
  }
  
  public void a(boolean paramBoolean)
  {
    this.b.a(0, paramBoolean);
  }
  
  public void b()
  {
    b(true);
  }
  
  public void b(boolean paramBoolean)
  {
    this.b.a(2, paramBoolean);
  }
  
  public void c()
  {
    c(true);
  }
  
  public void c(boolean paramBoolean)
  {
    this.b.a(1, paramBoolean);
  }
  
  public void d()
  {
    d(true);
  }
  
  public void d(boolean paramBoolean)
  {
    if (e())
    {
      c(paramBoolean);
      return;
    }
    a(paramBoolean);
  }
  
  public boolean e()
  {
    return (this.b.getCurrentItem() == 0) || (this.b.getCurrentItem() == 2);
  }
  
  public boolean f()
  {
    return this.b.getCurrentItem() == 2;
  }
  
  @SuppressLint({"NewApi"})
  protected boolean fitSystemWindows(Rect paramRect)
  {
    int i = paramRect.left;
    int j = paramRect.right;
    int k = paramRect.top;
    int m = paramRect.bottom;
    if (!this.a)
    {
      Log.v("SlidingMenu", "setting padding!");
      setPadding(i, k, j, m);
    }
    return true;
  }
  
  public boolean g()
  {
    int i = this.c.getMode();
    return ((i == 0) || (i == 2)) && (this.b.getCurrentItem() == 0);
  }
  
  public int getBehindOffset()
  {
    return ((RelativeLayout.LayoutParams)this.c.getLayoutParams()).rightMargin;
  }
  
  public float getBehindScrollScale()
  {
    return this.c.getScrollScale();
  }
  
  public View getContent()
  {
    return this.b.getContent();
  }
  
  public View getMenu()
  {
    return this.c.getContent();
  }
  
  public int getMode()
  {
    return this.c.getMode();
  }
  
  public View getSecondaryMenu()
  {
    return this.c.getSecondaryContent();
  }
  
  public int getTouchModeAbove()
  {
    return this.b.getTouchMode();
  }
  
  public int getTouchmodeMarginThreshold()
  {
    return this.c.getMarginThreshold();
  }
  
  public boolean h()
  {
    int i = this.c.getMode();
    return ((i == 1) || (i == 2)) && (this.b.getCurrentItem() == 2);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SlidingMenu.SavedState localSavedState = (SlidingMenu.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.b.setCurrentItem(localSavedState.a());
  }
  
  protected Parcelable onSaveInstanceState()
  {
    return new SlidingMenu.SavedState(super.onSaveInstanceState(), this.b.getCurrentItem());
  }
  
  public void setAboveOffset(int paramInt)
  {
    this.b.setAboveOffset(paramInt);
  }
  
  public void setAboveOffsetRes(int paramInt)
  {
    setAboveOffset((int)getContext().getResources().getDimension(paramInt));
  }
  
  public void setBehindCanvasTransformer(j paramj)
  {
    this.c.setCanvasTransformer(paramj);
  }
  
  public void setBehindOffset(int paramInt)
  {
    this.c.setWidthOffset(paramInt);
  }
  
  public void setBehindOffsetRes(int paramInt)
  {
    setBehindOffset((int)getContext().getResources().getDimension(paramInt));
  }
  
  public void setBehindScrollScale(float paramFloat)
  {
    if ((paramFloat < 0.0F) && (paramFloat > 1.0F)) {
      throw new IllegalStateException("ScrollScale must be between 0 and 1");
    }
    this.c.setScrollScale(paramFloat);
  }
  
  public void setBehindWidth(int paramInt)
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    try
    {
      Class[] arrayOfClass = { Point.class };
      Point localPoint = new Point();
      Display.class.getMethod("getSize", arrayOfClass).invoke(localDisplay, new Object[] { localPoint });
      i = localPoint.x;
      setBehindOffset(i - paramInt);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i = localDisplay.getWidth();
      }
    }
  }
  
  public void setBehindWidthRes(int paramInt)
  {
    setBehindWidth((int)getContext().getResources().getDimension(paramInt));
  }
  
  public void setContent(int paramInt)
  {
    setContent(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }
  
  public void setContent(View paramView)
  {
    this.b.setContent(paramView);
    c();
  }
  
  public void setFadeDegree(float paramFloat)
  {
    this.c.setFadeDegree(paramFloat);
  }
  
  public void setFadeEnabled(boolean paramBoolean)
  {
    this.c.setFadeEnabled(paramBoolean);
  }
  
  public void setMenu(int paramInt)
  {
    setMenu(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }
  
  public void setMenu(View paramView)
  {
    this.c.setContent(paramView);
  }
  
  public void setMode(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1) && (paramInt != 2)) {
      throw new IllegalStateException("SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT");
    }
    this.c.setMode(paramInt);
  }
  
  public void setOnCloseListener(k paramk)
  {
    this.e = paramk;
  }
  
  public void setOnClosedListener(l paraml)
  {
    this.b.setOnClosedListener(paraml);
  }
  
  public void setOnOpenListener(m paramm)
  {
    this.d = paramm;
  }
  
  public void setOnOpenedListener(n paramn)
  {
    this.b.setOnOpenedListener(paramn);
  }
  
  public void setOnPageSelectedListener(o paramo)
  {
    this.f = paramo;
  }
  
  public void setOnStartDragListener(p paramp)
  {
    this.g = paramp;
  }
  
  public void setSecondaryMenu(int paramInt)
  {
    setSecondaryMenu(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }
  
  public void setSecondaryMenu(View paramView)
  {
    this.c.setSecondaryContent(paramView);
  }
  
  public void setSecondaryShadowDrawable(int paramInt)
  {
    setSecondaryShadowDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setSecondaryShadowDrawable(Drawable paramDrawable)
  {
    this.c.setSecondaryShadowDrawable(paramDrawable);
  }
  
  public void setSelectedView(View paramView)
  {
    this.c.setSelectedView(paramView);
  }
  
  public void setSelectorBitmap(Bitmap paramBitmap)
  {
    this.c.setSelectorBitmap(paramBitmap);
  }
  
  public void setSelectorDrawable(int paramInt)
  {
    this.c.setSelectorBitmap(BitmapFactory.decodeResource(getResources(), paramInt));
  }
  
  public void setSelectorEnabled(boolean paramBoolean)
  {
    this.c.setSelectorEnabled(true);
  }
  
  public void setShadowDrawable(int paramInt)
  {
    setShadowDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setShadowDrawable(Drawable paramDrawable)
  {
    this.c.setShadowDrawable(paramDrawable);
  }
  
  public void setShadowWidth(int paramInt)
  {
    this.c.setShadowWidth(paramInt);
  }
  
  public void setShadowWidthRes(int paramInt)
  {
    setShadowWidth((int)getResources().getDimension(paramInt));
  }
  
  public void setSlidingEnabled(boolean paramBoolean)
  {
    this.b.setSlidingEnabled(paramBoolean);
  }
  
  public void setStatic(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setSlidingEnabled(false);
      this.b.setCustomViewBehind(null);
      this.b.setCurrentItem(1);
      return;
    }
    this.b.setCurrentItem(1);
    this.b.setCustomViewBehind(this.c);
    setSlidingEnabled(true);
  }
  
  public void setTouchModeAbove(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0) && (paramInt != 2)) {
      throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE.");
    }
    this.b.setTouchMode(paramInt);
  }
  
  public void setTouchModeBehind(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0) && (paramInt != 2)) {
      throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE.");
    }
    this.c.setTouchMode(paramInt);
  }
  
  public void setTouchmodeMarginThreshold(int paramInt)
  {
    this.c.setMarginThreshold(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.slidingmenu.lib.SlidingMenu
 * JD-Core Version:    0.7.0.1
 */