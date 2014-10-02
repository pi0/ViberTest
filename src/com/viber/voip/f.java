package com.viber.voip;

import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class f
  implements TextView.OnEditorActionListener
{
  f(AddFriendActivity paramAddFriendActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      if (AddFriendActivity.a(this.a).isEnabled()) {
        AddFriendActivity.b(this.a);
      }
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.f
 * JD-Core Version:    0.7.0.1
 */