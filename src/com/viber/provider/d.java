package com.viber.provider;

import android.support.v4.app.LoaderManager;

class d
  implements Runnable
{
  d(b paramb) {}
  
  public void run()
  {
    try
    {
      if (!b.i(this.a))
      {
        this.a.b.restartLoader(this.a.g, null, b.j(this.a));
        return;
      }
      b.k(this.a);
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.d
 * JD-Core Version:    0.7.0.1
 */