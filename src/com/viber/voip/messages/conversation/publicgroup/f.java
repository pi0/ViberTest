package com.viber.voip.messages.conversation.publicgroup;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class f
  implements TextView.OnEditorActionListener
{
  f(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    CreatePublicGroupActivity.b(this.a, true);
    this.a.a(paramTextView.getText().toString(), false);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.f
 * JD-Core Version:    0.7.0.1
 */