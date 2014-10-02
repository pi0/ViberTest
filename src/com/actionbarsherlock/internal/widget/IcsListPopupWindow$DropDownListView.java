package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.widget.ListView;
import com.actionbarsherlock.R.attr;

class IcsListPopupWindow$DropDownListView
  extends ListView
{
  private boolean mHijackFocus;
  private boolean mListSelectionHidden;
  
  public IcsListPopupWindow$DropDownListView(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.dropDownListViewStyle);
    this.mHijackFocus = paramBoolean;
    setCacheColorHint(0);
  }
  
  public boolean hasFocus()
  {
    return (this.mHijackFocus) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (this.mHijackFocus) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (this.mHijackFocus) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((this.mHijackFocus) && (this.mListSelectionHidden)) || (super.isInTouchMode());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.DropDownListView
 * JD-Core Version:    0.7.0.1
 */