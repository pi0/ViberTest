package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.widget.ListAdapter;

@TargetApi(14)
class j
  extends AccessibilityDelegateCompat
{
  j(AbsHListView paramAbsHListView) {}
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    int i = this.a.e(paramView);
    ListAdapter localListAdapter = (ListAdapter)this.a.getAdapter();
    if ((i == -1) || (localListAdapter == null)) {
      break label37;
    }
    label37:
    while ((!this.a.isEnabled()) || (!localListAdapter.isEnabled(i))) {
      return;
    }
    if (i == this.a.getSelectedItemPosition())
    {
      paramAccessibilityNodeInfoCompat.setSelected(true);
      paramAccessibilityNodeInfoCompat.addAction(8);
    }
    for (;;)
    {
      if (this.a.isClickable())
      {
        paramAccessibilityNodeInfoCompat.addAction(16);
        paramAccessibilityNodeInfoCompat.setClickable(true);
      }
      if (!this.a.isLongClickable()) {
        break;
      }
      paramAccessibilityNodeInfoCompat.addAction(32);
      paramAccessibilityNodeInfoCompat.setLongClickable(true);
      return;
      paramAccessibilityNodeInfoCompat.addAction(4);
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    int i = this.a.e(paramView);
    ListAdapter localListAdapter = (ListAdapter)this.a.getAdapter();
    if ((i == -1) || (localListAdapter == null)) {
      return false;
    }
    if ((!this.a.isEnabled()) || (!localListAdapter.isEnabled(i))) {
      return false;
    }
    long l = this.a.f(i);
    switch (paramInt)
    {
    default: 
      return false;
    case 8: 
      if (this.a.getSelectedItemPosition() == i)
      {
        this.a.setSelection(-1);
        return true;
      }
      return false;
    case 4: 
      if (this.a.getSelectedItemPosition() != i)
      {
        this.a.setSelection(i);
        return true;
      }
      return false;
    case 16: 
      if (this.a.isClickable()) {
        return this.a.a(paramView, i, l);
      }
      return false;
    }
    if (this.a.isLongClickable()) {
      return this.a.c(paramView, i, l);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.j
 * JD-Core Version:    0.7.0.1
 */