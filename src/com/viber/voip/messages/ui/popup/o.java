package com.viber.voip.messages.ui.popup;

import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout;

class o
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  o(n paramn, PopupMessageActivity paramPopupMessageActivity) {}
  
  public void onGlobalLayout()
  {
    this.b.g.getWindowVisibleDisplayFrame(PopupMessageActivity.k(this.b.r));
    int i = this.b.r.getResources().getDisplayMetrics().heightPixels - PopupMessageActivity.k(this.b.r).bottom;
    if (i > this.b.q) {
      PopupMessageActivity.a(this.b.r, 1);
    }
    for (;;)
    {
      this.b.q = i;
      if ((PopupMessageActivity.l(this.b.r) == 1) || (PopupMessageActivity.l(this.b.r) == 2))
      {
        this.b.r.a("onGlobalLayout,keyboard is opened");
        PopupMessageActivity.m(this.b.r).postDelayed(new p(this), 100L);
        if (Build.VERSION.SDK_INT < 16) {
          break;
        }
        this.b.g.getViewTreeObserver().removeOnGlobalLayoutListener(this);
      }
      return;
      if ((i == this.b.q) && (i != 0)) {
        PopupMessageActivity.a(this.b.r, 2);
      }
    }
    this.b.g.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.o
 * JD-Core Version:    0.7.0.1
 */