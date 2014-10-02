package com.viber.voip.messages.extras.fb;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.viber.voip.settings.l;

final class r
  implements CompoundButton.OnCheckedChangeListener
{
  r(l paraml) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.a("show_facebook_like_dialog", paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.r
 * JD-Core Version:    0.7.0.1
 */