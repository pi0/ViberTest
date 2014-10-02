package com.viber.voip.messages.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
import java.lang.reflect.Field;

public class ListViewWithLeftScrollBar
  extends ListView
{
  private static final String a = ListViewWithLeftScrollBar.class.getSimpleName();
  private boolean b;
  
  public ListViewWithLeftScrollBar(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ListViewWithLeftScrollBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public ListViewWithLeftScrollBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    try
    {
      b();
      return;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        c();
        this.b = true;
        return;
      }
      catch (Throwable localThrowable2) {}
    }
  }
  
  @SuppressLint({"NewApi"})
  private void b()
  {
    setVerticalScrollbarPosition(1);
  }
  
  private void c()
  {
    Field localField1 = View.class.getDeclaredField("mScrollCache");
    localField1.setAccessible(true);
    Object localObject1 = localField1.get(this);
    Field localField2 = localObject1.getClass().getDeclaredField("scrollBar");
    localField2.setAccessible(true);
    Object localObject2 = localField2.get(localObject1);
    Field localField3 = localObject2.getClass().getDeclaredField("mVerticalThumb");
    localField3.setAccessible(true);
    localField3.set(localObject2, new bq(this, new Drawable[] { (Drawable)localField3.get(localObject2) }));
  }
  
  public void invalidate(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.b) && (paramInt3 == getWidth()) && (paramInt2 == 0) && (paramInt4 == getHeight()) && (paramInt3 - paramInt1 < 30))
    {
      int i = paramInt3 - paramInt1;
      paramInt1 = 0;
      paramInt3 = 0 + i;
    }
    super.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void invalidate(Rect paramRect)
  {
    invalidate(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ListViewWithLeftScrollBar
 * JD-Core Version:    0.7.0.1
 */