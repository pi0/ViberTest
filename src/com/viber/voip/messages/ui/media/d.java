package com.viber.voip.messages.ui.media;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout.LayoutParams;

class d
  implements ViewTreeObserver.OnPreDrawListener
{
  d(DoodleActivity paramDoodleActivity) {}
  
  public boolean onPreDraw()
  {
    DoodleActivity.c(this.a).getViewTreeObserver().removeOnPreDrawListener(this);
    ((FrameLayout.LayoutParams)DoodleActivity.d(this.a).getLayoutParams()).leftMargin = DoodleActivity.c(this.a).getLeft();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.d
 * JD-Core Version:    0.7.0.1
 */