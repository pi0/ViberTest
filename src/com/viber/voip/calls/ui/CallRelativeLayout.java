package com.viber.voip.calls.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class CallRelativeLayout
  extends RelativeLayout
{
  private Set<Drawable> a = new HashSet();
  
  public CallRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public CallRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CallRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private boolean a(Drawable paramDrawable)
  {
    if ((paramDrawable != null) && (paramDrawable.isStateful()))
    {
      paramDrawable.setState(getDrawableState());
      return true;
    }
    return false;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    boolean bool = false;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      bool = a((Drawable)localIterator.next());
    }
    if (bool) {
      invalidate();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.CallRelativeLayout
 * JD-Core Version:    0.7.0.1
 */