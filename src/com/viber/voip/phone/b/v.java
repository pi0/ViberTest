package com.viber.voip.phone.b;

import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.View.OnClickListener;

class v
  implements View.OnClickListener
{
  v(u paramu) {}
  
  public void onClick(View paramView)
  {
    this.a.getChildFragmentManager().popBackStackImmediate();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.v
 * JD-Core Version:    0.7.0.1
 */