package com.viber.voip.viberout.ui;

import com.viber.voip.billing.ae;
import com.viber.voip.billing.ag;

class ab
  implements ag
{
  ab(ViberOutDialogs paramViberOutDialogs, ae paramae, String paramString) {}
  
  public void a(String paramString)
  {
    ViberOutDialogs localViberOutDialogs;
    Object[] arrayOfObject;
    if (paramString != null)
    {
      if (this.b == null) {
        break label69;
      }
      localViberOutDialogs = this.c;
      arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = this.b;
    }
    label69:
    for (String str = localViberOutDialogs.getString(2131494271, arrayOfObject);; str = this.c.getString(2131494272, new Object[] { paramString }))
    {
      ViberOutDialogs.a(this.c, null, str, this.a);
      return;
      paramString = this.a.a();
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ab
 * JD-Core Version:    0.7.0.1
 */