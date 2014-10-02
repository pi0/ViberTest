package com.viber.voip.messages.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

public class TabListIndicator
  extends HorizontalScrollView
  implements View.OnClickListener
{
  private Runnable a;
  private boolean b = true;
  private final IcsLinearLayout c;
  private ei[] d = new ei[0];
  private int e;
  private int f;
  private eh g;
  
  public TabListIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabListIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setHorizontalScrollBarEnabled(false);
    this.c = new IcsLinearLayout(paramContext, null);
    this.c.setGravity(3);
    addView(this.c, new ViewGroup.LayoutParams(-2, -1));
  }
  
  private void a(int paramInt)
  {
    View localView = this.c.getChildAt(paramInt);
    if (this.a != null) {
      removeCallbacks(this.a);
    }
    this.a = new eg(this, localView);
    post(this.a);
  }
  
  public void a(ei[] paramArrayOfei, int paramInt)
  {
    this.c.removeAllViews();
    int i = paramArrayOfei.length;
    for (int j = 0; j < i; j++)
    {
      ei localei = paramArrayOfei[j];
      ei.a(localei, j);
      ei.b(localei, this.e);
      localei.setOnClickListener(this);
      this.c.addView(paramArrayOfei[j], new LinearLayout.LayoutParams(-2, -1));
    }
    this.d = paramArrayOfei;
    this.f = paramInt;
    if (this.f > i) {
      this.f = (i - 1);
    }
    setCurrentItem(this.f);
    requestLayout();
  }
  
  public boolean getAnimateToTab()
  {
    return this.b;
  }
  
  public ei[] getTabItemView()
  {
    return this.d;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.a != null) {
      post(this.a);
    }
  }
  
  public void onClick(View paramView)
  {
    ei localei = (ei)paramView;
    if (this.f != ei.a(localei))
    {
      if (!ei.b(localei)) {
        setCurrentItem(ei.a(localei));
      }
      if (this.g != null) {
        this.g.a(ei.c(localei), ei.d(localei));
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null) {
      removeCallbacks(this.a);
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (i == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int j = this.c.getChildCount();
      if ((j <= 1) || ((i != 1073741824) && (i != -2147483648))) {
        break label124;
      }
      if (j <= 2) {
        break label111;
      }
      this.e = ((int)(0.4F * View.MeasureSpec.getSize(paramInt1)));
    }
    for (;;)
    {
      int k = getMeasuredWidth();
      super.onMeasure(paramInt1, paramInt2);
      int m = getMeasuredWidth();
      if ((bool) && (k != m)) {
        setCurrentItem(this.f);
      }
      return;
      bool = false;
      break;
      label111:
      this.e = (View.MeasureSpec.getSize(paramInt1) / 2);
      continue;
      label124:
      this.e = -1;
    }
  }
  
  public void setAnimateToTab(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.f = paramInt;
    int i = this.c.getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = this.c.getChildAt(j);
      if (j == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if ((bool) && (this.b)) {
          a(paramInt);
        }
        j++;
        break;
      }
    }
  }
  
  public void setTabClickListener(eh parameh)
  {
    this.g = parameh;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.TabListIndicator
 * JD-Core Version:    0.7.0.1
 */