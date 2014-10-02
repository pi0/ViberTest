package com.viber.voip.messages.ui.chathead;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class ay
{
  public static int a(View paramView)
  {
    return ((FrameLayout.LayoutParams)paramView.getLayoutParams()).leftMargin;
  }
  
  public static void a(View paramView, float paramFloat)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    localLayoutParams.leftMargin = ((int)paramFloat);
    paramView.setLayoutParams(localLayoutParams);
    FrameLayout localFrameLayout = (FrameLayout)paramView.getParent();
    if (localFrameLayout != null) {
      localFrameLayout.invalidate();
    }
  }
  
  public static float b(View paramView)
  {
    return ((FrameLayout.LayoutParams)paramView.getLayoutParams()).topMargin;
  }
  
  public static void b(View paramView, float paramFloat)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    localLayoutParams.topMargin = ((int)paramFloat);
    paramView.setLayoutParams(localLayoutParams);
    FrameLayout localFrameLayout = (FrameLayout)paramView.getParent();
    if (localFrameLayout != null) {
      localFrameLayout.invalidate();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ay
 * JD-Core Version:    0.7.0.1
 */