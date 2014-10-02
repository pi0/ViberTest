package com.viber.voip.gallery;

import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.BaseAdapter;

public abstract class b
  extends BaseAdapter
{
  protected View.OnTouchListener a = new c(this);
  private Object b = Integer.valueOf(-1);
  
  protected void a(View paramView)
  {
    paramView.setOnTouchListener(this.a);
  }
  
  protected boolean a(Object paramObject)
  {
    return paramObject.equals(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.b
 * JD-Core Version:    0.7.0.1
 */