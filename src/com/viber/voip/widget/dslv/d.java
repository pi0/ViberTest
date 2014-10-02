package com.viber.voip.widget.dslv;

import android.content.Context;
import android.view.View;
import android.widget.Checkable;

public class d
  extends c
  implements Checkable
{
  public d(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean isChecked()
  {
    View localView = getChildAt(0);
    if ((localView instanceof Checkable)) {
      return ((Checkable)localView).isChecked();
    }
    return false;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    View localView = getChildAt(0);
    if ((localView instanceof Checkable)) {
      ((Checkable)localView).setChecked(paramBoolean);
    }
  }
  
  public void toggle()
  {
    View localView = getChildAt(0);
    if ((localView instanceof Checkable)) {
      ((Checkable)localView).toggle();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.dslv.d
 * JD-Core Version:    0.7.0.1
 */