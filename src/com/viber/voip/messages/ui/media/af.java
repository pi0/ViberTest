package com.viber.voip.messages.ui.media;

import android.view.View;
import android.view.View.OnClickListener;

class af
  implements View.OnClickListener
{
  af(SendMediaActivity paramSendMediaActivity) {}
  
  public void onClick(View paramView)
  {
    SendMediaActivity.a(this.a, "Send btn clicked! needSendAfterImageReady = " + SendMediaActivity.a(this.a));
    SendMediaActivity.b(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.af
 * JD-Core Version:    0.7.0.1
 */