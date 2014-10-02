package com.viber.voip.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.BaseAdapter;
import android.widget.ListView;

public class ViberListView
  extends ListView
{
  public static final String y = ViberListView.class.getSimpleName();
  
  public ViberListView(Context paramContext)
  {
    super(paramContext);
    setDescendantFocusability(262144);
  }
  
  public ViberListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setDescendantFocusability(262144);
  }
  
  public ViberListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
  }
  
  protected void layoutChildren()
  {
    try
    {
      super.layoutChildren();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      measure(getMeasuredWidth(), getMeasuredHeight());
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      while ((getAdapter() == null) || (!(getAdapter() instanceof BaseAdapter))) {}
      ((BaseAdapter)getAdapter()).notifyDataSetChanged();
      return;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException) {}
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    catch (NullPointerException localNullPointerException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.ViberListView
 * JD-Core Version:    0.7.0.1
 */