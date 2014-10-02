package com.viber.voip.util;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;

public class hu
  extends LinkMovementMethod
{
  private static hu a;
  private boolean b = true;
  
  public static hu a()
  {
    if (a == null) {
      a = new hu();
    }
    return a;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public boolean canSelectArbitrarily()
  {
    if (gl.b()) {
      return true;
    }
    return super.canSelectArbitrarily();
  }
  
  public boolean onTouchEvent(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    if (this.b) {
      return super.onTouchEvent(paramTextView, paramSpannable, paramMotionEvent);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hu
 * JD-Core Version:    0.7.0.1
 */