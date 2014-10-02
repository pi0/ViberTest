package com.viber.voip.stickers.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class StickerGrid
  extends FrameLayout
{
  private a a;
  private int b = 0;
  private int c = 0;
  private Map<View, com.viber.voip.stickers.c.a> d = new HashMap();
  
  public StickerGrid(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public StickerGrid(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public StickerGrid(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    this.a = new a(paramContext);
    setLast(false);
  }
  
  private int b(View paramView, com.viber.voip.stickers.c.a parama)
  {
    int i = this.a.b(parama);
    int j = this.a.a(parama);
    int k = this.a.c(parama);
    int m = this.a.d(parama);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    localLayoutParams.width = k;
    localLayoutParams.height = m;
    localLayoutParams.leftMargin = i;
    localLayoutParams.topMargin = j;
    localLayoutParams.gravity = 51;
    return i + k;
  }
  
  public void a()
  {
    this.d.clear();
  }
  
  public void a(View paramView, com.viber.voip.stickers.c.a parama)
  {
    this.d.put(paramView, parama);
    b(paramView, parama);
    paramView.requestLayout();
  }
  
  public void addView(View paramView)
  {
    addView(paramView, new FrameLayout.LayoutParams(1, 1));
  }
  
  public void b()
  {
    this.b = 0;
    Iterator localIterator = this.d.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      this.b = Math.max(this.b, b((View)localEntry.getKey(), (com.viber.voip.stickers.c.a)localEntry.getValue()));
    }
    this.c = ((getMeasuredWidth() - this.b) / 2);
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (localView.isShown())
      {
        FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
        localLayoutParams.leftMargin += this.c;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b();
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setLast(boolean paramBoolean)
  {
    int i = this.a.b();
    int j = this.a.c();
    int k = this.a.c();
    if (paramBoolean) {}
    for (int m = this.a.c();; m = 0)
    {
      setPadding(i, j, k, m);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ui.StickerGrid
 * JD-Core Version:    0.7.0.1
 */