package com.viber.voip.market;

import org.json.JSONException;

class ap
  implements Runnable
{
  ap(am paramam, String paramString1, String paramString2) {}
  
  public void run()
  {
    ak.a("followPublicGroup, groupId:" + this.a + ", dataJson:" + this.b);
    try
    {
      MarketPublicGroupInfo localMarketPublicGroupInfo = new MarketPublicGroupInfo(this.a, this.b);
      ak.a(this.c.a).a(localMarketPublicGroupInfo, new aq(this));
      return;
    }
    catch (JSONException localJSONException)
    {
      ak.a("error parsing json", localJSONException);
      ak.a(this.c.a, new ar(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.ap
 * JD-Core Version:    0.7.0.1
 */