package com.actionbarsherlock.internal.widget;

import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;

public class IcsAdapterView$AdapterContextMenuInfo
  implements ContextMenu.ContextMenuInfo
{
  public long id;
  public int position;
  public View targetView;
  
  public IcsAdapterView$AdapterContextMenuInfo(View paramView, int paramInt, long paramLong)
  {
    this.targetView = paramView;
    this.position = paramInt;
    this.id = paramLong;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAdapterView.AdapterContextMenuInfo
 * JD-Core Version:    0.7.0.1
 */