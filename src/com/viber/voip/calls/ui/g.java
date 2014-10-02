package com.viber.voip.calls.ui;

import android.widget.ImageButton;
import com.viber.voip.util.hj;

class g
  implements hj
{
  g(PhoneFragment paramPhoneFragment, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    i.a(PhoneFragment.h(this.c), Integer.valueOf(paramInt));
    i.d(PhoneFragment.h(this.c), paramString);
    if (6 == paramInt) {
      PhoneFragment.a(this.c, PhoneFragment.h(this.c), true);
    }
    do
    {
      return;
      if (paramInt == 0)
      {
        if (this.a)
        {
          PhoneFragment.i(this.c).showContextMenu();
          return;
        }
        PhoneFragment.a(this.c, PhoneFragment.h(this.c), this.b);
        return;
      }
      if (1 == paramInt)
      {
        PhoneFragment.a(this.c, PhoneFragment.h(this.c), this.b);
        return;
      }
    } while ((4 != paramInt) && (3 != paramInt) && (2 != paramInt) && (-1 != paramInt));
    PhoneFragment.a(this.c, PhoneFragment.h(this.c), this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.g
 * JD-Core Version:    0.7.0.1
 */