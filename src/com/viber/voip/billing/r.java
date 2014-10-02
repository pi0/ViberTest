package com.viber.voip.billing;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class r
{
  public q[] a;
  private bo b;
  private s c;
  
  public r(m paramm)
  {
    this.c = paramm.b();
    if (paramm.a()) {}
    for (;;)
    {
      try
      {
        JSONArray localJSONArray = paramm.a.getJSONArray("products");
        arrayOfq = new q[localJSONArray.length()];
        i = 0;
        if (i < localJSONArray.length())
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(i);
          localbn = bn.b(localJSONObject.getString("merchant_product_id"));
          str1 = localJSONObject.getString("price");
          str2 = localJSONObject.getString("currency");
          if (!localJSONObject.has("sort")) {
            break label223;
          }
          str5 = localJSONObject.getString("sort");
          if (str5 == null) {
            break label223;
          }
        }
      }
      catch (JSONException localJSONException)
      {
        q[] arrayOfq;
        int i;
        bn localbn;
        String str1;
        String str2;
        String str5;
        int k;
        boolean bool;
        String str3;
        double d;
        a.a("json exception", localJSONException);
        this.c = s.b;
        return;
      }
      try
      {
        k = Integer.parseInt(str5);
        j = k;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        j = 0;
        continue;
        str4 = "EUR";
        continue;
      }
      bool = "840".equals(str2);
      str3 = a.a(bool) + str1;
      d = Double.parseDouble(str1);
      if (!bool) {
        break;
      }
      str4 = "USD";
      arrayOfq[i] = new q(localbn, str3, d, str4, j);
      i++;
      continue;
      this.a = arrayOfq;
      return;
      label223:
      j = 0;
    }
  }
  
  public boolean a()
  {
    return this.c == null;
  }
  
  public s b()
  {
    return this.c;
  }
  
  public q[] c()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.r
 * JD-Core Version:    0.7.0.1
 */