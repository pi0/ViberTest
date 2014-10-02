package com.viber.voip.phone.b;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;

class w
  implements View.OnClickListener
{
  w(u paramu) {}
  
  public void onClick(View paramView)
  {
    this.a.getChildFragmentManager().beginTransaction().replace(2131166032, u.a(this.a), "fragment_call_keypad").addToBackStack("fragment_call_keypad").commit();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.w
 * JD-Core Version:    0.7.0.1
 */