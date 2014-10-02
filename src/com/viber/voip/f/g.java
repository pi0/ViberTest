package com.viber.voip.f;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;

class g
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  g(f paramf, ImageView paramImageView, View paramView, int paramInt) {}
  
  public void onGlobalLayout()
  {
    int i = this.a.getWidth();
    int j = this.b.getWidth();
    if (j > this.c) {
      this.a.setImageResource(2130838155);
    }
    if ((i != 0) || (j != 0))
    {
      if (Build.VERSION.SDK_INT >= 16) {
        f.a(this.b.getViewTreeObserver(), this);
      }
    }
    else {
      return;
    }
    this.b.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.f.g
 * JD-Core Version:    0.7.0.1
 */