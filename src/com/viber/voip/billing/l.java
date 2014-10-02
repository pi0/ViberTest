package com.viber.voip.billing;

import android.os.AsyncTask;

abstract class l
  extends AsyncTask<String, Void, m>
{
  private boolean a;
  
  public l(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
  
  public abstract int a();
  
  protected m a(String... paramVarArgs)
  {
    String str = paramVarArgs[0];
    return a.a(this.a, a(), str);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.l
 * JD-Core Version:    0.7.0.1
 */