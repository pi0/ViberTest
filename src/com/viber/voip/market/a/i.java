package com.viber.voip.market.a;

import android.os.Bundle;
import android.os.Parcelable;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bn;
import com.viber.voip.market.MarketApi;
import com.viber.voip.market.MarketApi.ProductInfo;
import com.viber.voip.market.u;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

public class i
  extends c
{
  private u a;
  
  public void a(bn[] paramArrayOfbn, u paramu)
  {
    this.a = paramu;
    Bundle localBundle = new Bundle();
    String[] arrayOfString = new String[paramArrayOfbn.length];
    for (int i = 0; i < paramArrayOfbn.length; i++) {
      arrayOfString[i] = paramArrayOfbn[i].toString();
    }
    localBundle.putStringArray("product_ids", arrayOfString);
    execute(ViberApplication.getInstance(), i.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    String[] arrayOfString = paramBundle.getStringArray("product_ids");
    bn[] arrayOfbn = new bn[arrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++) {
      arrayOfbn[i] = bn.a(arrayOfString[i]);
    }
    MarketApi.a().a(arrayOfbn, new j(this, paramb));
  }
  
  public void processResult(Bundle paramBundle)
  {
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("products_info");
    MarketApi.ProductInfo[] arrayOfProductInfo = new MarketApi.ProductInfo[arrayOfParcelable.length];
    for (int i = 0; i < arrayOfParcelable.length; i++) {
      arrayOfProductInfo[i] = ((MarketApi.ProductInfo)arrayOfParcelable[i]);
    }
    this.a.a(arrayOfProductInfo);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.i
 * JD-Core Version:    0.7.0.1
 */