package it.sephiroth.android.library.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.ViewConfiguration;

final class f
  implements Runnable
{
  f(AbsHListView paramAbsHListView) {}
  
  public void run()
  {
    int i;
    boolean bool;
    Drawable localDrawable;
    if (this.a.G == 0)
    {
      this.a.G = 1;
      View localView = this.a.getChildAt(this.a.B - this.a.W);
      if ((localView != null) && (!localView.hasFocusable()))
      {
        this.a.i = 0;
        if (this.a.aj) {
          break label254;
        }
        localView.setPressed(true);
        this.a.setPressed(true);
        this.a.e();
        this.a.a(this.a.B, localView);
        this.a.refreshDrawableState();
        i = ViewConfiguration.getLongPressTimeout();
        bool = this.a.isLongClickable();
        if (this.a.n != null)
        {
          localDrawable = this.a.n.getCurrent();
          if ((localDrawable != null) && ((localDrawable instanceof TransitionDrawable)))
          {
            if (!bool) {
              break label234;
            }
            ((TransitionDrawable)localDrawable).startTransition(i);
          }
        }
      }
    }
    while (bool)
    {
      if (AbsHListView.c(this.a) == null) {
        AbsHListView.a(this.a, new e(this.a, null));
      }
      AbsHListView.c(this.a).a();
      this.a.postDelayed(AbsHListView.c(this.a), i);
      return;
      label234:
      ((TransitionDrawable)localDrawable).resetTransition();
    }
    this.a.G = 2;
    return;
    label254:
    this.a.G = 2;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.f
 * JD-Core Version:    0.7.0.1
 */