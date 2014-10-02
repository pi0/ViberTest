package com.viber.voip.phone;

import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.phone.b.b.c;

class am
  implements View.OnClickListener
{
  am(al paramal) {}
  
  public void onClick(View paramView)
  {
    c localc = (c)al.a(this.a).getSupportFragmentManager().findFragmentByTag("tag_secure_call_dialog");
    if (localc == null) {
      localc = new c();
    }
    localc.show(al.a(this.a).getSupportFragmentManager(), "tag_secure_call_dialog");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.am
 * JD-Core Version:    0.7.0.1
 */