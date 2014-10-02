package com.viber.voip.calls.ui;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.ImageButton;
import com.viber.voip.widget.PhoneTypeField;

class d
  implements View.OnLongClickListener
{
  d(PhoneFragment paramPhoneFragment) {}
  
  public boolean onLongClick(View paramView)
  {
    PhoneFragment.a(this.a, "onLongClick del");
    PhoneFragment.d(this.a);
    PhoneFragment.b(this.a).setPhoneFieldText("");
    PhoneFragment.e(this.a).setPressed(false);
    this.a.getActivity().getIntent().setData(null);
    PhoneFragment.c(this.a);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.d
 * JD-Core Version:    0.7.0.1
 */