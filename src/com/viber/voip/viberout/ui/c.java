package com.viber.voip.viberout.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.billing.a;

class c
  implements View.OnClickListener
{
  c(ViberOutActivity paramViberOutActivity) {}
  
  public void onClick(View paramView)
  {
    String str1 = bc.b().K;
    String str2 = str1 + "phone=";
    String str3 = a.a(str2 + "&src_phone=" + a.c());
    ViberOutWebViewActivity.a(this.a, str3, this.a.getString(2131494254));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.c
 * JD-Core Version:    0.7.0.1
 */