package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.voip.market.MarketApi.ProductInfo;
import com.viber.voip.market.u;
import com.viber.voip.process.b;

class j
  implements u
{
  j(i parami, b paramb) {}
  
  public void a(MarketApi.ProductInfo[] paramArrayOfProductInfo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArray("products_info", paramArrayOfProductInfo);
    this.a.a(localBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.a.j
 * JD-Core Version:    0.7.0.1
 */