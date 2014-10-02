package com.viber.voip;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class h
  implements TextView.OnEditorActionListener
{
  h(AddFriendPreview paramAddFriendPreview) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    if (AddFriendPreview.b(this.a).isEnabled()) {
      AddFriendPreview.a(this.a);
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.h
 * JD-Core Version:    0.7.0.1
 */