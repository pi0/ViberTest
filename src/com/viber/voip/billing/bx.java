package com.viber.voip.billing;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.au;

class bx
  implements au
{
  bx(bv parambv) {}
  
  public void a(int paramInt, boolean paramBoolean)
  {
    bv.a("onSyncStateChanged state:" + paramInt + " register:" + paramBoolean);
    if (ViberApplication.isActivated())
    {
      switch (paramInt)
      {
      default: 
        return;
      }
      bv.a("Synchronizing purchased products...");
      bv.a(null);
      return;
    }
    bv.a("prepareOnAppInit, viber not activated, not syncing products.");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.bx
 * JD-Core Version:    0.7.0.1
 */