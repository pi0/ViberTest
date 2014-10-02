package com.viber.voip.billing;

import android.os.AsyncTask;

class ch
  extends AsyncTask<Void, Void, Integer>
{
  ch(cf paramcf, co paramco, bu parambu) {}
  
  protected Integer a(Void... paramVarArgs)
  {
    ds localds = this.a.d(this.b);
    bv.a("verifyPurchase: result: " + localds);
    return Integer.valueOf(localds.ordinal());
  }
  
  protected void a(Integer paramInteger)
  {
    this.a.a(this.b, ds.values()[paramInteger.intValue()]);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.ch
 * JD-Core Version:    0.7.0.1
 */