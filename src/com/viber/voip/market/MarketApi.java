package com.viber.voip.market;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.PurchaseSupportActivity;
import com.viber.voip.billing.a;
import com.viber.voip.billing.ap;
import com.viber.voip.billing.bt;
import com.viber.voip.billing.bv;
import com.viber.voip.billing.dl;
import java.util.ArrayList;
import java.util.Iterator;

public class MarketApi
{
  private static final String a = MarketApi.class.getSimpleName();
  private static MarketApi c;
  private ArrayList<bj> b = new ArrayList();
  
  private MarketApi()
  {
    this.b.add(new bn(this));
  }
  
  public static MarketApi a()
  {
    try
    {
      if (c == null) {
        c = new MarketApi();
      }
      MarketApi localMarketApi = c;
      return localMarketApi;
    }
    finally {}
  }
  
  private y b(bt parambt, String paramString)
  {
    if (paramString != null) {}
    for (y localy = y.a(paramString);; localy = y.a(parambt))
    {
      b("parseExtraInfo: " + localy);
      return localy;
    }
  }
  
  private static void b(String paramString)
  {
    a.a(a, paramString);
  }
  
  private bj c(bt parambt)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      bj localbj = (bj)localIterator.next();
      if (localbj.a(parambt)) {
        return localbj;
      }
    }
    return null;
  }
  
  public v a(bt parambt)
  {
    return c(parambt).c(parambt);
  }
  
  public void a(com.viber.voip.billing.bn parambn, String paramString)
  {
    b(parambn.a(), paramString);
    b("purchaseProduct " + parambn);
    if (!bv.a().h())
    {
      b("purchaseProduct: security violation");
      dl localdl2 = PurchaseSupportActivity.a();
      ViberApplication localViberApplication2 = ViberApplication.getInstance();
      localdl2.a(localViberApplication2.getString(2131494235));
      localdl2.b(localViberApplication2.getString(2131494236));
      localdl2.a();
      return;
    }
    if (!a.d())
    {
      b("purchaseProduct: no connectivity");
      dl localdl1 = PurchaseSupportActivity.a();
      ViberApplication localViberApplication1 = ViberApplication.getInstance();
      localdl1.a(localViberApplication1.getString(2131493794));
      localdl1.b(localViberApplication1.getString(2131493774));
      localdl1.a();
      return;
    }
    bv.a().a(parambn);
  }
  
  public void a(bt parambt, w paramw)
  {
    paramw.a(parambt, a(parambt));
  }
  
  public void a(bt parambt, String paramString)
  {
    b(parambt, paramString);
    b("downloadProduct " + parambt + ", json:" + paramString);
    c(parambt).b(parambt);
  }
  
  public void a(com.viber.voip.billing.bn[] paramArrayOfbn, u paramu)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfbn.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(paramArrayOfbn[j]);
    }
    bv.a().c().a(localArrayList, new p(this, paramArrayOfbn, paramu));
  }
  
  public boolean b(bt parambt)
  {
    return c(parambt) != null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.MarketApi
 * JD-Core Version:    0.7.0.1
 */