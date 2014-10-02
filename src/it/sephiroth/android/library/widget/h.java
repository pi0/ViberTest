package it.sephiroth.android.library.widget;

import android.view.VelocityTracker;

class h
  implements Runnable
{
  h(g paramg) {}
  
  public void run()
  {
    int i = AbsHListView.d(this.a.a);
    VelocityTracker localVelocityTracker = AbsHListView.e(this.a.a);
    at localat = g.a(this.a);
    if ((localVelocityTracker == null) || (i == -1)) {
      return;
    }
    localVelocityTracker.computeCurrentVelocity(1000, AbsHListView.f(this.a.a));
    float f = -localVelocityTracker.getXVelocity(i);
    if ((Math.abs(f) >= AbsHListView.g(this.a.a)) && (localat.a(f, 0.0F)))
    {
      this.a.a.postDelayed(this, 40L);
      return;
    }
    this.a.b();
    this.a.a.G = 3;
    this.a.a.b(1);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.h
 * JD-Core Version:    0.7.0.1
 */