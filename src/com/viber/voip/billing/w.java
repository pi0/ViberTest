package com.viber.voip.billing;

import android.os.AsyncTask;
import com.viber.voip.bc;
import com.viber.voip.bd;
import java.util.HashMap;

class w
  extends AsyncTask<Void, Void, r>
{
  v a;
  
  public w(v paramv)
  {
    this.a = paramv;
  }
  
  protected r a(Void... paramVarArgs)
  {
    try
    {
      String str = bc.b().I;
      r localr = new r(a.a(a.a(str + a.c() + "/products/android/list"), new HashMap(), false, 30000, false));
      return localr;
    }
    catch (Exception localException) {}
    return null;
  }
  
  protected void a(r paramr)
  {
    this.a.a(paramr);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.w
 * JD-Core Version:    0.7.0.1
 */