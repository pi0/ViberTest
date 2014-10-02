package com.viber.voip.calls.ui;

import android.os.Handler;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.widget.PhoneTypeField;

class k
  implements View.OnClickListener
{
  private final String c;
  private final int d;
  private Runnable e = new l(this);
  
  static
  {
    if (!PhoneFragment.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public k(PhoneFragment paramPhoneFragment, String paramString, int paramInt)
  {
    if ((!a) && (paramString == null)) {
      throw new AssertionError();
    }
    this.c = paramString;
    this.d = paramInt;
  }
  
  public void onClick(View paramView)
  {
    PhoneFragment.b(this.b).getPhoneFieldEditable().append(this.c);
    PhoneFragment.c(this.b);
    PhoneFragment.b(this.b).requestFocus();
    PhoneFragment.g(this.b).removeCallbacks(this.e);
    PhoneFragment.g(this.b).postDelayed(this.e, 50L);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.k
 * JD-Core Version:    0.7.0.1
 */