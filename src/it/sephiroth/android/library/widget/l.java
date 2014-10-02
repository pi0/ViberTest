package it.sephiroth.android.library.widget;

import android.view.View;
import android.widget.ListAdapter;

class l
  extends t
  implements Runnable
{
  int a;
  
  private l(AbsHListView paramAbsHListView)
  {
    super(paramAbsHListView, null);
  }
  
  public void run()
  {
    if (this.b.aj) {}
    ListAdapter localListAdapter;
    int i;
    View localView;
    do
    {
      do
      {
        return;
        localListAdapter = this.b.k;
        i = this.a;
      } while ((localListAdapter == null) || (this.b.ao <= 0) || (i == -1) || (i >= localListAdapter.getCount()) || (!b()));
      localView = this.b.getChildAt(i - this.b.W);
    } while (localView == null);
    this.b.a(localView, i, localListAdapter.getItemId(i));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.l
 * JD-Core Version:    0.7.0.1
 */