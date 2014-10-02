package com.actionbarsherlock.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.ActionProvider;

class ActivityChooserView$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ActivityChooserView$2(ActivityChooserView paramActivityChooserView) {}
  
  public void onGlobalLayout()
  {
    if (this.this$0.isShowingPopup())
    {
      if (this.this$0.isShown()) {
        break label31;
      }
      ActivityChooserView.access$100(this.this$0).dismiss();
    }
    label31:
    do
    {
      return;
      ActivityChooserView.access$100(this.this$0).show();
    } while (this.this$0.mProvider == null);
    this.this$0.mProvider.subUiVisibilityChanged(true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView.2
 * JD-Core Version:    0.7.0.1
 */