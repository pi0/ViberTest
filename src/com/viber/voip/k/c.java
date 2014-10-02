package com.viber.voip.k;

import com.viber.voip.c.f;
import com.zoobe.sdk.helper.ZoobeHelper;

class c
  implements f
{
  c(a parama) {}
  
  public void onDexLoaded()
  {
    for (;;)
    {
      try
      {
        a.g("Dex loaded, instantiating helper class com.zoobe.sdk.helper.ZoobeHelperImpl");
        localZoobeHelper = (ZoobeHelper)Class.forName("com.zoobe.sdk.helper.ZoobeHelperImpl").newInstance();
      }
      catch (Throwable localThrowable)
      {
        ZoobeHelper localZoobeHelper;
        a.a("error instantiating com.zoobe.sdk.helper.ZoobeHelperImpl", localThrowable);
        a.a(this.a, false);
        continue;
      }
      synchronized (this.a)
      {
        a.a(this.a, localZoobeHelper);
        a.g("instantiated");
        a.a(this.a);
        return;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.k.c
 * JD-Core Version:    0.7.0.1
 */