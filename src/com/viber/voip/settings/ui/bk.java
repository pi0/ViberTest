package com.viber.voip.settings.ui;

import android.support.v4.app.FragmentActivity;
import com.viber.voip.messages.extras.twitter.ab;

class bk
  implements ab
{
  bk(bj parambj) {}
  
  public void a(boolean paramBoolean)
  {
    if (this.a.getActivity() != null) {
      this.a.getActivity().runOnUiThread(new bl(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bk
 * JD-Core Version:    0.7.0.1
 */