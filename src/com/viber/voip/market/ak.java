package com.viber.voip.market;

import android.content.Context;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bt;
import com.viber.voip.dc;
import com.viber.voip.dk;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ak
  extends bp
  implements bm
{
  private static final String b = ak.class.getSimpleName();
  private Handler c = dc.a(dk.a);
  private bk d;
  private bh e;
  private Context f;
  private MarketReceiver g = new MarketReceiver();
  private boolean h;
  
  public ak(Context paramContext, bk parambk, bh parambh)
  {
    super("Market", parambh);
    this.f = paramContext;
    this.e = parambh;
    this.d = parambk;
    this.d.a(this);
    parambh.a(new am(this, null), "App");
    this.g.a(new bg(this, null));
  }
  
  private void a(bt parambt, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = parambt.toString();
    arrayOfObject[1] = Integer.valueOf(paramInt);
    a("onProductStatusChanged", arrayOfObject);
  }
  
  private void a(Runnable paramRunnable)
  {
    this.c.post(paramRunnable);
  }
  
  private void a(String paramString, int paramInt)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("group_id", paramString);
      localJSONObject.put("status", paramInt);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localJSONObject.toString();
      a("onFollowPublicGroup", arrayOfObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void a(JSONObject paramJSONObject)
  {
    a("onGetClientInfo", new Object[] { paramJSONObject });
  }
  
  private void a(MarketApi.ProductInfo[] paramArrayOfProductInfo)
  {
    int i = 0;
    JSONObject localJSONObject1 = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    try
    {
      int j = paramArrayOfProductInfo.length;
      while (i < j)
      {
        MarketApi.ProductInfo localProductInfo = paramArrayOfProductInfo[i];
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("id", localProductInfo.a.toString());
        if (localProductInfo.b != null) {
          localJSONObject2.put("price_string", localProductInfo.b);
        }
        localJSONObject2.put("status", localProductInfo.c.ordinal());
        localJSONArray.put(localJSONObject2);
        i++;
      }
      localJSONObject1.put("products", localJSONArray);
      a("onGetProductsInfo", new Object[] { localJSONObject1 });
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void a(MarketApi.UserPublicGroupInfo[] paramArrayOfUserPublicGroupInfo)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    for (;;)
    {
      try
      {
        int i = paramArrayOfUserPublicGroupInfo.length;
        int j = 0;
        if (j < i)
        {
          MarketApi.UserPublicGroupInfo localUserPublicGroupInfo = paramArrayOfUserPublicGroupInfo[j];
          JSONObject localJSONObject2 = new JSONObject();
          localJSONObject2.put("group_id", Long.toString(localUserPublicGroupInfo.a, 10));
          if (localUserPublicGroupInfo.b == 3)
          {
            k = 1;
            localJSONObject2.put("membership", k);
            localJSONObject2.put("name", localUserPublicGroupInfo.c);
            localJSONArray.put(localJSONObject2);
            j++;
          }
        }
        else
        {
          localJSONObject1.put("groups", localJSONArray);
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localJSONObject1.toString();
          a("onGetUserPublicGroups", arrayOfObject);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      int k = 2;
    }
  }
  
  private void b(bt parambt, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = parambt.toString();
    arrayOfObject[1] = Integer.valueOf(paramInt);
    a("onGetProductStatus", arrayOfObject);
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(3, b, paramString);
  }
  
  private void b(String paramString, int paramInt)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("group_id", paramString);
      localJSONObject.put("status", paramInt);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localJSONObject.toString();
      a("onUnfollowPublicGroup", arrayOfObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private static void b(String paramString, Throwable paramThrowable)
  {
    ViberApplication.log(3, b, paramString, paramThrowable);
  }
  
  public void a()
  {
    b("handleUiAttached");
  }
  
  public void a(bt parambt, v paramv)
  {
    a(parambt, paramv.ordinal());
  }
  
  public void b()
  {
    b("handleUiDetached");
  }
  
  public void c()
  {
    b("handleUiDestroyed");
    this.g.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.ak
 * JD-Core Version:    0.7.0.1
 */