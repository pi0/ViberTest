package com.viber.voip.viberout.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.billing.a;

class g
  implements View.OnClickListener
{
  g(ViberOutActivity paramViberOutActivity) {}
  
  public void onClick(View paramView)
  {
    String str = a.a(bc.b().L);
    ViberOutActivity.a(this.a, str, this.a.getString(2131494253));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.g
 * JD-Core Version:    0.7.0.1
 */