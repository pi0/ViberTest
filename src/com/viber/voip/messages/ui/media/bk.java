package com.viber.voip.messages.ui.media;

import android.view.View;
import android.view.View.OnClickListener;

class bk
  implements View.OnClickListener
{
  bk(bj parambj) {}
  
  public void onClick(View paramView)
  {
    if (this.a.getActivity() != null) {
      ((ViewMediaActivity)this.a.getActivity()).b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bk
 * JD-Core Version:    0.7.0.1
 */