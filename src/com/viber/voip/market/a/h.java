package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.voip.billing.bt;
import com.viber.voip.market.v;
import com.viber.voip.market.w;
import com.viber.voip.process.b;

class h
  implements w
{
  h(g paramg, b paramb) {}
  
  public void a(bt parambt, v paramv)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("product_id", parambt.toString());
    localBundle.putInt("product_status", paramv.ordinal());
    this.a.a(localBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.h
 * JD-Core Version:    0.7.0.1
 */