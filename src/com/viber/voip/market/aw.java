package com.viber.voip.market;

import com.viber.voip.billing.bn;
import com.viber.voip.billing.bv;

class aw
  implements Runnable
{
  aw(am paramam, String paramString1, String paramString2) {}
  
  public void run()
  {
    String str1 = this.a;
    ak.a("purchaseProduct " + str1 + ", json:" + this.b);
    if ((str1.startsWith("[\"")) && (str1.endsWith("\"]")))
    {
      str1 = str1.substring(2, -2 + str1.length());
      ak.a("TEMP WORKAROUND converted merchant product id from json array: " + str1);
    }
    if (str1.startsWith("stickers.pack."))
    {
      str1 = "viber.stickers." + str1.substring("stickers.pack.".length());
      ak.a("TEMP WORKAROUND converted to " + str1);
    }
    String str2 = str1;
    try
    {
      bn localbn = bn.a(str2);
      ak.a(this.c.a).a(localbn, this.b);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      ak.a("ALERT! Invalid merchant product id: " + str2);
      ak.a("Error: " + localIllegalArgumentException);
      bv.a().f();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.aw
 * JD-Core Version:    0.7.0.1
 */