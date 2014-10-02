package com.viber.voip.messages.ui.media;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class ad
  implements TextView.OnEditorActionListener
{
  ad(SendMediaActivity paramSendMediaActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      SendMediaActivity.a(this.a, "keyboard's send btn was clicked! needSendAfterImageReady = " + SendMediaActivity.a(this.a));
      SendMediaActivity.b(this.a);
      bool = true;
    }
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ad
 * JD-Core Version:    0.7.0.1
 */