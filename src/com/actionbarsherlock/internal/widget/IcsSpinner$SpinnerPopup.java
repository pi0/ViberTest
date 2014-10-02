package com.actionbarsherlock.internal.widget;

import android.widget.ListAdapter;

abstract interface IcsSpinner$SpinnerPopup
{
  public abstract void dismiss();
  
  public abstract CharSequence getHintText();
  
  public abstract boolean isShowing();
  
  public abstract void setAdapter(ListAdapter paramListAdapter);
  
  public abstract void setPromptText(CharSequence paramCharSequence);
  
  public abstract void show();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner.SpinnerPopup
 * JD-Core Version:    0.7.0.1
 */