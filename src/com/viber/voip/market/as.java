package com.viber.voip.market;

import org.json.JSONException;

class as
  implements Runnable
{
  as(am paramam, String paramString1, String paramString2) {}
  
  public void run()
  {
    ak.a("unfollowPublicGroup, groupId:" + this.a + ", dataJson:" + this.b);
    try
    {
      MarketPublicGroupInfo localMarketPublicGroupInfo = new MarketPublicGroupInfo(this.a, this.b);
      ak.a(this.c.a).b(localMarketPublicGroupInfo, new at(this));
      return;
    }
    catch (JSONException localJSONException)
    {
      ak.a("error parsing json", localJSONException);
      ak.a(this.c.a, new au(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.as
 * JD-Core Version:    0.7.0.1
 */