package com.actionbarsherlock.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;

public class SearchView$SearchAutoComplete
  extends AutoCompleteTextView
{
  private SearchView mSearchView;
  private int mThreshold = getThreshold();
  
  public SearchView$SearchAutoComplete(Context paramContext)
  {
    super(paramContext);
  }
  
  public SearchView$SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SearchView$SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private boolean isEmpty()
  {
    return TextUtils.getTrimmedLength(getText()) == 0;
  }
  
  public boolean enoughToFilter()
  {
    return (this.mThreshold <= 0) || (super.enoughToFilter());
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    this.mSearchView.onTextFocusChanged();
  }
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        KeyEvent.DispatcherState localDispatcherState2 = getKeyDispatcherState();
        if (localDispatcherState2 != null) {
          localDispatcherState2.startTracking(paramKeyEvent, this);
        }
        return true;
      }
      if (paramKeyEvent.getAction() == 1)
      {
        KeyEvent.DispatcherState localDispatcherState1 = getKeyDispatcherState();
        if (localDispatcherState1 != null) {
          localDispatcherState1.handleUpEvent(paramKeyEvent);
        }
        if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
        {
          this.mSearchView.clearFocus();
          SearchView.access$2300(this.mSearchView, false);
          return true;
        }
      }
    }
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((paramBoolean) && (this.mSearchView.hasFocus()) && (getVisibility() == 0))
    {
      ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
      if (SearchView.isLandscapeMode(getContext())) {
        SearchView.access$2200(this, true);
      }
    }
  }
  
  public void performCompletion() {}
  
  protected void replaceText(CharSequence paramCharSequence) {}
  
  void setSearchView(SearchView paramSearchView)
  {
    this.mSearchView = paramSearchView;
  }
  
  public void setThreshold(int paramInt)
  {
    super.setThreshold(paramInt);
    this.mThreshold = paramInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.widget.SearchView.SearchAutoComplete
 * JD-Core Version:    0.7.0.1
 */