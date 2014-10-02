package com.viber.voip.market;

import com.viber.voip.billing.bk;
import com.viber.voip.billing.bm;
import com.viber.voip.billing.bn;
import com.viber.voip.billing.bo;
import com.viber.voip.billing.bq;
import com.viber.voip.billing.bt;
import java.util.ArrayList;

class p
  implements bk
{
  p(MarketApi paramMarketApi, bn[] paramArrayOfbn, u paramu) {}
  
  public void a(bo parambo, bm parambm)
  {
    int i = 0;
    MarketApi localMarketApi = MarketApi.a();
    ArrayList localArrayList = new ArrayList();
    if (parambo.c())
    {
      bn[] arrayOfbn2 = this.a;
      int k = arrayOfbn2.length;
      int m = 0;
      if (m < k)
      {
        bn localbn2 = arrayOfbn2[m];
        bq localbq = parambm.a(localbn2);
        String str;
        if (localMarketApi.b(localbn2.a()))
        {
          bt localbt = localbn2.a();
          v localv = localMarketApi.a(localbn2.a());
          if (localbq != null)
          {
            str = localbq.b();
            label103:
            localArrayList.add(new MarketApi.ProductInfo(localbt, localv, str));
          }
        }
        for (;;)
        {
          m++;
          break;
          str = null;
          break label103;
          MarketApi.a("getProductsInfo: skipping product unsupported by MarketApi: " + localbn2);
        }
      }
    }
    else
    {
      MarketApi.a("query products info failed, responding without price data");
      bn[] arrayOfbn1 = this.a;
      int j = arrayOfbn1.length;
      if (i < j)
      {
        bn localbn1 = arrayOfbn1[i];
        if (localMarketApi.b(localbn1.a())) {
          localArrayList.add(new MarketApi.ProductInfo(localbn1.a(), localMarketApi.a(localbn1.a()), null));
        }
        for (;;)
        {
          i++;
          break;
          MarketApi.a("getProductsInfo: skipping product unsupported by MarketApi: " + localbn1);
        }
      }
    }
    this.b.a((MarketApi.ProductInfo[])localArrayList.toArray(new MarketApi.ProductInfo[localArrayList.size()]));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.p
 * JD-Core Version:    0.7.0.1
 */