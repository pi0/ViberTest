package com.viber.voip.market;

import org.json.JSONException;

class bf
  implements Runnable
{
  bf(am paramam, String paramString1, String paramString2) {}
  
  public void run()
  {
    ak.a("viewPublicGroup, groupId:" + this.a + ", dataJson:" + this.b);
    try
    {
      MarketPublicGroupInfo localMarketPublicGroupInfo = new MarketPublicGroupInfo(this.a, this.b);
      ak.a(this.c.a).a(localMarketPublicGroupInfo);
      return;
    }
    catch (JSONException localJSONException)
    {
      ak.a("error parsing json", localJSONException);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.bf
 * JD-Core Version:    0.7.0.1
 */