package it.sephiroth.android.library.widget;

import android.view.View;

class d
  extends t
  implements Runnable
{
  private d(AbsHListView paramAbsHListView)
  {
    super(paramAbsHListView, null);
  }
  
  public void run()
  {
    View localView;
    if ((this.a.isPressed()) && (this.a.am >= 0))
    {
      int i = this.a.am - this.a.W;
      localView = this.a.getChildAt(i);
      if (this.a.aj) {
        break label103;
      }
      if (!b()) {
        break label121;
      }
    }
    label103:
    label121:
    for (boolean bool = this.a.c(localView, this.a.am, this.a.an);; bool = false)
    {
      if (bool)
      {
        this.a.setPressed(false);
        localView.setPressed(false);
      }
      do
      {
        return;
        this.a.setPressed(false);
      } while (localView == null);
      localView.setPressed(false);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.d
 * JD-Core Version:    0.7.0.1
 */