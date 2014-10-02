package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.widget.ImageButton;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class ActionMenuPresenter$OverflowMenuButton
  extends ImageButton
  implements View_HasStateListenerSupport, ActionMenuView.ActionMenuChildView
{
  private final Set<View_OnAttachStateChangeListener> mListeners = new HashSet();
  
  public ActionMenuPresenter$OverflowMenuButton(ActionMenuPresenter paramActionMenuPresenter, Context paramContext)
  {
    super(paramContext, null, R.attr.actionOverflowButtonStyle);
    setClickable(true);
    setFocusable(true);
    setVisibility(0);
    setEnabled(true);
  }
  
  public void addOnAttachStateChangeListener(View_OnAttachStateChangeListener paramView_OnAttachStateChangeListener)
  {
    this.mListeners.add(paramView_OnAttachStateChangeListener);
  }
  
  public boolean needsDividerAfter()
  {
    return false;
  }
  
  public boolean needsDividerBefore()
  {
    return false;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Iterator localIterator = this.mListeners.iterator();
    while (localIterator.hasNext()) {
      ((View_OnAttachStateChangeListener)localIterator.next()).onViewAttachedToWindow(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Iterator localIterator = this.mListeners.iterator();
    while (localIterator.hasNext()) {
      ((View_OnAttachStateChangeListener)localIterator.next()).onViewDetachedFromWindow(this);
    }
    if (ActionMenuPresenter.access$100(this.this$0) != null) {
      ActionMenuPresenter.access$100(this.this$0).dismiss();
    }
  }
  
  public boolean performClick()
  {
    if (super.performClick()) {
      return true;
    }
    playSoundEffect(0);
    this.this$0.showOverflowMenu();
    return true;
  }
  
  public void removeOnAttachStateChangeListener(View_OnAttachStateChangeListener paramView_OnAttachStateChangeListener)
  {
    this.mListeners.remove(paramView_OnAttachStateChangeListener);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.OverflowMenuButton
 * JD-Core Version:    0.7.0.1
 */