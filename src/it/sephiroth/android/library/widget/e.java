package it.sephiroth.android.library.widget;

import android.view.View;
import android.widget.ListAdapter;

class e
  extends t
  implements Runnable
{
  private e(AbsHListView paramAbsHListView)
  {
    super(paramAbsHListView, null);
  }
  
  public void run()
  {
    int i = this.a.B;
    View localView = this.a.getChildAt(i - this.a.W);
    int j;
    long l;
    if (localView != null)
    {
      j = this.a.B;
      l = this.a.k.getItemId(this.a.B);
      if ((!b()) || (this.a.aj)) {
        break label124;
      }
    }
    label124:
    for (boolean bool = this.a.c(localView, j, l);; bool = false)
    {
      if (bool)
      {
        this.a.G = -1;
        this.a.setPressed(false);
        localView.setPressed(false);
        return;
      }
      this.a.G = 2;
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.e
 * JD-Core Version:    0.7.0.1
 */