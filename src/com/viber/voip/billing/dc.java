package com.viber.voip.billing;

import android.app.AlertDialog.Builder;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class dc
  implements ag
{
  dc(db paramdb, ae paramae, ah paramah) {}
  
  public void a(String paramString)
  {
    PurchaseSupportActivity.c(this.c.a);
    String str1;
    label29:
    AlertDialog.Builder localBuilder;
    if (paramString != null)
    {
      if (this.b == null) {
        break label189;
      }
      str1 = this.b.b;
      bc localbc = bc.a();
      u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("602"));
      localBuilder = new AlertDialog.Builder(this.c.a);
      localBuilder.setTitle(2131494274);
      if (str1 == null) {
        break label194;
      }
    }
    label189:
    label194:
    for (String str2 = this.c.a.getString(2131494276, new Object[] { paramString, str1 });; str2 = this.c.a.getString(2131494277, new Object[] { paramString }))
    {
      localBuilder.setMessage(str2);
      localBuilder.setPositiveButton(2131493699, new dd(this));
      localBuilder.setNegativeButton(2131493814, new de(this));
      localBuilder.setCancelable(true);
      localBuilder.setOnCancelListener(new df(this));
      localBuilder.show();
      return;
      paramString = this.a.a();
      break;
      str1 = null;
      break label29;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.dc
 * JD-Core Version:    0.7.0.1
 */