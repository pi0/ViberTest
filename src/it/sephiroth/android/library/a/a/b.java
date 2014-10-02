package it.sephiroth.android.library.a.a;

import android.annotation.TargetApi;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import it.sephiroth.android.library.widget.AbsHListView;

public class b
  implements a
{
  private a a;
  private AbsHListView b;
  
  public b(AbsHListView paramAbsHListView)
  {
    this.b = paramAbsHListView;
  }
  
  @TargetApi(11)
  public void a(ActionMode paramActionMode, int paramInt, long paramLong, boolean paramBoolean)
  {
    this.a.a(paramActionMode, paramInt, paramLong, paramBoolean);
    if (this.b.getCheckedItemCount() == 0) {
      paramActionMode.finish();
    }
  }
  
  public void a(a parama)
  {
    this.a = parama;
  }
  
  public boolean a()
  {
    return this.a != null;
  }
  
  @TargetApi(11)
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return this.a.onActionItemClicked(paramActionMode, paramMenuItem);
  }
  
  @TargetApi(11)
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    boolean bool1 = this.a.onCreateActionMode(paramActionMode, paramMenu);
    boolean bool2 = false;
    if (bool1)
    {
      this.b.setLongClickable(false);
      bool2 = true;
    }
    return bool2;
  }
  
  @TargetApi(11)
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.a.onDestroyActionMode(paramActionMode);
    this.b.d = null;
    this.b.a();
    this.b.aj = true;
    this.b.x();
    this.b.requestLayout();
    this.b.setLongClickable(true);
  }
  
  @TargetApi(11)
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return this.a.onPrepareActionMode(paramActionMode, paramMenu);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.a.a.b
 * JD-Core Version:    0.7.0.1
 */