package com.viber.voip.viberout.ui;

import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.billing.ae;
import com.viber.voip.billing.ag;

class u
  implements ag
{
  u(ViberOutDialogs paramViberOutDialogs, ae paramae, String paramString) {}
  
  public void a(String paramString)
  {
    ay localay;
    ViberOutDialogs localViberOutDialogs;
    Object[] arrayOfObject;
    if (paramString != null)
    {
      bc localbc = bc.a();
      com.viber.voip.a.u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("300b"));
      localay = new ay(this.c);
      if (this.b == null) {
        break label176;
      }
      localViberOutDialogs = this.c;
      arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = this.b;
    }
    label176:
    for (String str = localViberOutDialogs.getString(2131494269, arrayOfObject);; str = this.c.getString(2131494270, new Object[] { paramString }))
    {
      localay.a(str);
      localay.a(2131494265, new v(this));
      localay.a(2131494266, new w(this));
      localay.a(17039360, new x(this));
      localay.a(true);
      localay.a(new y(this));
      localay.a();
      return;
      paramString = this.a.a();
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.u
 * JD-Core Version:    0.7.0.1
 */