package com.viber.voip.market;

import com.viber.voip.billing.bn;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

class ax
  implements Runnable
{
  ax(am paramam, String paramString) {}
  
  public void run()
  {
    ak.a("getProductsInfo: " + this.a);
    ArrayList localArrayList = new ArrayList();
    try
    {
      JSONArray localJSONArray = new JSONArray(this.a);
      int i = 0;
      for (;;)
      {
        int k = localJSONArray.length();
        if (i < k) {
          try
          {
            localArrayList.add(bn.a(localJSONArray.getString(i)));
            i++;
          }
          catch (IllegalArgumentException localIllegalArgumentException2)
          {
            for (;;)
            {
              ak.a(localIllegalArgumentException2.getMessage());
            }
          }
        }
      }
      String[] arrayOfString;
      int j;
      return;
    }
    catch (JSONException localJSONException)
    {
      ak.a("getProductsInfo: Not in json format, falling back to legacy comma separated list");
      arrayOfString = this.a.split(",");
      j = 0;
      for (;;)
      {
        if (j < arrayOfString.length) {
          try
          {
            localArrayList.add(bn.a(arrayOfString[j]));
            j++;
          }
          catch (IllegalArgumentException localIllegalArgumentException1)
          {
            for (;;)
            {
              ak.a(localIllegalArgumentException1.getMessage());
            }
          }
        }
      }
      if (localArrayList.size() > 0)
      {
        ak.a("getProductsInfo: querying " + localArrayList.size() + " products");
        ak.a(this.b.a).a((bn[])localArrayList.toArray(new bn[localArrayList.size()]), new ay(this));
        return;
      }
      ak.a("no products to query for getProductsInfo");
      ak.a(this.b.a, new MarketApi.ProductInfo[0]);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.ax
 * JD-Core Version:    0.7.0.1
 */