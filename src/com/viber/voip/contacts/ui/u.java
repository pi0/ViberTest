package com.viber.voip.contacts.ui;

import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.util.at;
import com.viber.voip.util.ft;
import com.viber.voip.util.hj;

class u
  implements hj
{
  u(t paramt) {}
  
  public void a(boolean paramBoolean, int paramInt, String paramString)
  {
    String str = null;
    this.a.b.a("checkUnknownContact status = " + paramInt + ", number = " + paramString);
    FragmentActivity localFragmentActivity = this.a.b.getActivity();
    if (localFragmentActivity == null) {
      return;
    }
    switch (paramInt)
    {
    case 1: 
    case 3: 
    default: 
      ContactDetailsFragment.b(this.a.b, false);
    }
    for (;;)
    {
      ContactDetailsFragment.i(this.a.b).post(new v(this, str, paramString));
      return;
      ContactDetailsFragment.b(this.a.b, true);
      str = null;
      continue;
      str = "com.viber.voip.action.CONNECTION_PROBLEM";
      ft.c(localFragmentActivity);
      continue;
      bc localbc = bc.a();
      com.viber.voip.a.u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("204"));
      at.a(localFragmentActivity, 2131494231, 2131494232, null);
      str = "com.viber.voip.action.NO_SERVICE_DIALOG";
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.u
 * JD-Core Version:    0.7.0.1
 */