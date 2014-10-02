package com.viber.voip.messages.extras.map;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class m
  extends FrameLayout
{
  private n a;
  
  public m(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a == null) {
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      this.a.a();
      continue;
      this.a.b();
    }
  }
  
  public n getMapTouchCallback()
  {
    return this.a;
  }
  
  public void setMapTouchCallback(n paramn)
  {
    this.a = paramn;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.m
 * JD-Core Version:    0.7.0.1
 */