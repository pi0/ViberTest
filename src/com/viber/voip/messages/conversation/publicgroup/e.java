package com.viber.voip.messages.conversation.publicgroup;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.viber.voip.widget.TextViewWithDescription;

class e
  implements TextView.OnEditorActionListener
{
  e(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (!CreatePublicGroupActivity.c(this.a))
    {
      String str = paramTextView.getText().toString();
      this.a.a.setText(str.replaceAll(" ", ""));
      CreatePublicGroupActivity.e(this.a, this.a.a.getText().toString());
      this.a.a(CreatePublicGroupActivity.d(this.a), false);
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.e
 * JD-Core Version:    0.7.0.1
 */